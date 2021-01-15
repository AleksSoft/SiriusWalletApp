import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/repository/profile_repository.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  static ProfileController get con => Get.find();

  static final kycDocType = ['PoI', 'Selfie', 'PoA', 'PoF', 'Questions'];

  final _personalData = PersonalData().obs;
  PersonalData get personalData => this._personalData.value;
  set personalData(PersonalData value) => this._personalData.value = value;

  final _tierInfo = TierInfoPayload().obs;
  TierInfoPayload get tierInfo => this._tierInfo.value;
  set tierInfo(TierInfoPayload value) => this._tierInfo.value = value;

  final documentsMap = Map<String, KycDocument>().obs;

  double get limitPercent => doubleCurrent / doubleMax;

  double get doubleCurrent =>
      double.tryParse(tierInfo?.currentTier?.current ?? '0') ?? 0.0;

  double get doubleMax =>
      double.tryParse(tierInfo?.currentTier?.maxLimit ?? '0') ?? 1.0;

  bool get hasAccountInfo => !personalData.address.isNullOrBlank;

  String addressValue;
  String apartmentValue;
  String zipCodeValue;

  @override
  void onReady() async {
    await reloadData();
    super.onReady();
  }

  Future<void> reloadData() async {
    personalData = await ProfileRepository.getPersonalData();
    tierInfo = await ProfileRepository.getTierInfo();
    documentsMap.addAll(await ProfileRepository.getKycDocuments());

    AppLog.loggerNoStack.d('TierInfo: ${tierInfo.toProto3Json()}');
    AppLog.loggerNoStack.d('PersonalData: ${personalData.toProto3Json()}');
    AppLog.loggerNoStack.d('DocumentsMap: ${documentsMap.toString()}');
  }

  Future<void> saveQuestionnaire(List<AnswersRequest_Choice> answers) async {
    if (await ProfileRepository.saveQuestionnaire(answers: answers)) {
      await reloadData();
      Get.offAndToNamed(Routes.UPGRADE_ACC_RESULT);
    }
  }

  Future<void> submitProfile() async {
    TierUpgrade tier = tierInfo.nextTier.tier.toLowerCase() == 'advanced'
        ? TierUpgrade.Advanced
        : TierUpgrade.ProIndividual;
    if (await ProfileRepository.submitProfile(tier: tier)) {
      await reloadData();
      Get.back();
    }
  }

  Future<void> submitAddress() async {
    if (validateAddress(addressValue) == null &&
        validateAddress(apartmentValue) == null &&
        validateAddress(zipCodeValue) == null) {
      await ProfileRepository.setAddress(
        address: '$addressValue $apartmentValue',
      );
      await ProfileRepository.setZip(zip: zipCodeValue);
      await reloadData();
      openNextUpgradePage();
    } else {
      Get.rawSnackbar(
        message: 'Fields are empty or too short!',
        backgroundColor: AppColors.red,
      );
    }
  }

  Future<void> submitDoc(DocType docType, List<int> fileIntList) async {
    String documentType;
    switch (docType) {
      case DocType.drivingLicense:
        documentType = 'ProofOfFunds';
        break;
      case DocType.nationalId:
        documentType = 'IdCard';
        break;
      case DocType.passport:
        documentType = 'Passport';
        break;
      case DocType.selfie:
        documentType = 'Selfie';
        break;
      case DocType.proofOfAddress:
        documentType = 'ProofOfAddress';
        break;
      case DocType.proofOfFunds:
        documentType = 'ProofOfFunds';
        break;
      default:
        break;
    }
    final bool result = await ProfileRepository.uploadKycFile(
      documentType: documentType,
      filename: 'photo',
      file: fileIntList,
    );
    if (result) {
      await reloadData();
      openNextUpgradePage();
    } else {
      Get.rawSnackbar(
        title: '',
        message: 'Something went wrong!',
        backgroundColor: AppColors.red,
      );
    }
  }

  openNextUpgradePage({bool fromMain = false}) {
    if (personalData.address.isNullOrBlank) {
      Get.toNamed(Routes.UPGRADE_ACC_ADDRESS);
    } else if (pageNeedsOpen(0)) {
      openNextPage(
        Routes.UPGRADE_ACC_CHOOSE_DOC,
        fromMain: fromMain,
      );
    } else if (pageNeedsOpen(1)) {
      openNextPage(
        Routes.UPGRADE_ACC_DOC,
        arguments: DocType.selfie,
        fromMain: fromMain,
      );
    } else if (pageNeedsOpen(2)) {
      openNextPage(
        Routes.UPGRADE_ACC_DOC,
        arguments: DocType.proofOfAddress,
        fromMain: fromMain,
      );
    } else if (pageNeedsOpen(3)) {
      openNextPage(
        Routes.UPGRADE_ACC_DOC,
        arguments: DocType.proofOfFunds,
        fromMain: fromMain,
      );
    } else if (pageNeedsOpen(4)) {
      openNextPage(
        Routes.UPGRADE_ACC_QUEST,
        fromMain: fromMain,
      );
    } else {
      openNextPage(
        Routes.UPGRADE_ACC_RESULT,
        fromMain: fromMain,
      );
    }
  }

  bool pageNeedsOpen(int id) {
    try {
      return documentsMap[kycDocType[0]] == null &&
          tierInfo.nextTier.documents.contains(kycDocType[0]);
    } catch (e) {
      return false;
    }
  }

  openNextPage(String route, {Object arguments, bool fromMain = true}) =>
      fromMain
          ? Get.toNamed(route, arguments: arguments)
          : Get.offAndToNamed(route, arguments: arguments);

  String docTitle(String type) {
    if (type == kycDocType[0]) {
      return 'identity_documents'.tr;
    } else if (type == kycDocType[1]) {
      return 'selfie'.tr;
    } else if (type == kycDocType[2]) {
      return 'proof_of_address'.tr;
    } else if (type == kycDocType[3]) {
      return 'proof_of_funds'.tr;
    } else {
      return 'questionnaire'.tr;
    }
  }

  String validateAddress(String value) {
    if (value.isNotEmpty && value.length >= 3) {
      return null;
    } else {
      return 'Too short';
    }
  }
}