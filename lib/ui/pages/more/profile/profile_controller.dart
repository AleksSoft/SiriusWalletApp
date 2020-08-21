import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/repositories/profile_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/quest/upgrade_account_quest.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/upgrade_account_choose_doc.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/upgrade_account_doc.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  static ProfileController get con => Get.find();

  static final kycDocType = ['PoI', 'Selfie', 'PoA', 'Questions'];

  final _personalData = PersonalData().obs;
  PersonalData get personalData => this._personalData.value;
  set personalData(PersonalData value) => this._personalData.value = value;

  final _tierInfo = TierInfoPayload().obs;
  TierInfoPayload get tierInfo => this._tierInfo.value;
  set tierInfo(TierInfoPayload value) => this._tierInfo.value = value;

  final _documentsMap = Map<String, KycDocumentsResponse_KycDocument>().obs;
  Map<String, KycDocumentsResponse_KycDocument> get documentsMap =>
      this._documentsMap.value;
  set documentsMap(Map<String, KycDocumentsResponse_KycDocument> value) =>
      this._documentsMap.value = value;

  double get limitPercent => (doubleCurrent * 100) / doubleMax;

  double get doubleCurrent =>
      double.tryParse(tierInfo?.currentTier?.current ?? '0') ?? 0.0;

  double get doubleMax =>
      double.tryParse(tierInfo?.currentTier?.maxLimit ?? '0') ?? 1.0;

  bool get hasAccountInfo => !personalData.address.isNullOrBlank;

  @override
  void onInit() async {
    await reloadData();
    super.onInit();
  }

  Future<void> reloadData() async {
    personalData = await ProfileRepository.getPersonalData();
    tierInfo = await ProfileRepository.getTierInfo();
    documentsMap = await ProfileRepository.getKycDocuments();

    print('---- TierInfo: ${tierInfo.toProto3Json()}');
    print('---- PersonalData: ${personalData.toProto3Json()}');
    print('---- DocumentsMap: ${documentsMap.toString()}');
  }

  submitDoc(DocType docType, List<int> fileIntList) async {
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

  openNextUpgradePage() {
    if (documentsMap[kycDocType[0]] == null) {
      Get.toNamed(UpgradeAccountChooseDocPage.route);
    } else if (documentsMap[kycDocType[1]] == null) {
      Get.offAndToNamed(
        UpgradeAccountDocPage.route,
        arguments: DocType.selfie,
      );
    } else if (documentsMap[kycDocType[2]] == null) {
      Get.offAndToNamed(
        UpgradeAccountDocPage.route,
        arguments: DocType.proofOfAddress,
      );
    } else if (documentsMap[kycDocType[3]] == null) {
      Get.offAndToNamed(UpgradeAccountQuestPage.route);
    }
  }

  void upgradeAccount() async {
    // await _repository.upgradeAccount();
    // Get.until((route) => route.isFirst);
  }

  String docTitle(String type) {
    if (type == kycDocType[0]) {
      return 'identity_documents'.tr;
    } else if (type == kycDocType[1]) {
      return 'selfie'.tr;
    } else if (type == kycDocType[2]) {
      return 'proof_of_address'.tr;
    } else {
      return 'questionnaire'.tr;
    }
  }
}
