import 'package:antares_wallet/app/core/common/common.dart';
import 'package:antares_wallet/app/core/routes/app_pages.dart';
import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/domain/repositories/profile_repository.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class ProfileController extends GetxController {
  static ProfileController get con => Get.find();

  static final kycDocType = ['PoI', 'Selfie', 'PoA', 'PoF', 'Questions'];

  final personalData = PersonalData().obs;
  final tierInfo = TierInfoPayload().obs;
  final documentsMap = Map<String, KycDocument>().obs;

  final IProfileRepository profileRepo;
  ProfileController({@required this.profileRepo});

  String addressValue;
  String apartmentValue;
  String zipCodeValue;

  @override
  void onReady() {
    reloadData();
    super.onReady();
  }

  double get limitPercent => doubleCurrent / doubleMax;

  double get doubleCurrent =>
      double.tryParse(tierInfo.value.currentTier.current ?? '0') ?? 0.0;

  double get doubleMax =>
      double.tryParse(tierInfo.value.currentTier.maxLimit ?? '0') ?? 1.0;

  bool get hasAccountInfo =>
      personalData.value.hasAddress() && !personalData.value.address.isBlank;

  String get currentTierCurrent => Formatter.currency(
        tierInfo.value.currentTier.current,
        suffix: tierInfo.value.currentTier.asset,
        fractionDigits: 2,
      );

  String get currentTierMax => Formatter.currency(
        tierInfo.value.currentTier.maxLimit,
        suffix: tierInfo.value.currentTier.asset,
        fractionDigits: 2,
      );

  TierUpgrade get nextTier =>
      tierInfo.value.nextTier.tier.toLowerCase() == 'advanced'
          ? TierUpgrade.Advanced
          : TierUpgrade.ProIndividual;

  List<String> get nextTierDocList => tierInfo.value.nextTier?.documents ?? [];

  String hoursLeft(UpgradeRequest r) {
    final hours = DateTime.now()
        .difference(DateTime.fromMillisecondsSinceEpoch(
            r.submitDate.seconds.toInt() * 1000))
        .inHours;
    return hours < 1 ? 1.toString() : hours.toString();
  }

  Future<void> reloadData() async {
    final personalDataResponse = await profileRepo.getPersonalData();
    personalDataResponse.fold(
      (error) => AppLog.logger.e(error.toProto3Json()),
      (result) {
        AppLog.logger.i('PersonalData: ${result.toProto3Json()}');
        personalData(result);
      },
    );

    final tierResponse = await profileRepo.getTierInfo();
    tierResponse.fold(
      (error) => AppLog.logger.e(error.toProto3Json()),
      (result) {
        AppLog.logger.i('TierInfo: ${result.toProto3Json()}');
        tierInfo(result);
      },
    );

    final documentsResponse = await profileRepo.getKycDocuments();
    documentsResponse.fold(
      (error) => AppLog.logger.e(error.toProto3Json()),
      (result) {
        AppLog.logger.i('DocumentsMap: $result');
        documentsMap.assignAll(result);
      },
    );
  }

  Future<void> saveQuestionnaire(List<AnswersRequest_Choice> answers) async {
    final response = await profileRepo.saveQuestionnaire(answers: answers);
    response.fold(
      (error) => AppLog.logger.e(error.toProto3Json()),
      (result) async {
        await reloadData();
        Get.offAndToNamed(Routes.UPGRADE_ACC_RESULT);
      },
    );
  }

  Future<void> submitProfile() async {
    final response = await profileRepo.submitProfile(tier: nextTier);
    response.fold(
      (error) => Get.snackbar(
        error.code.toString(),
        error.message,
        backgroundColor: AppColors.red,
        colorText: AppColors.primary,
      ),
      (result) async {
        if (result) {
          await reloadData();
          Get.back();
        }
      },
    );
  }

  Future<void> submitAddress() async {
    if (validateAddress(addressValue) == null &&
        validateAddress(apartmentValue) == null &&
        validateAddress(zipCodeValue) == null) {
      await profileRepo.setAddress(
        address: '$addressValue $apartmentValue',
      );
      await profileRepo.setZip(zip: zipCodeValue);
      await reloadData();
      openNextUpgradePage();
    } else {
      Get.snackbar(
        null,
        'Fields are empty or too short!',
        backgroundColor: AppColors.red,
        colorText: AppColors.primary,
      );
    }
  }

  Future<void> submitDoc(
    DocType docType,
    List<int> fileIntList, {
    bool isFront = true,
    bool openNext = true,
  }) async {
    final response = await profileRepo.uploadKycFile(
      docType: docType,
      file: fileIntList,
      isFront: isFront,
    );
    response.fold(
      (error) => AppLog.logger.e(error.toProto3Json()),
      (result) async {
        if (result) {
          if (openNext) {
            await reloadData();
            openNextUpgradePage();
          }
        } else {
          Get.snackbar(
            'Oops',
            'Something went wrong!',
            backgroundColor: AppColors.red,
            colorText: AppColors.primary,
          );
        }
      },
    );
  }

  void openNextUpgradePage({bool fromMain = false}) {
    if (personalData.value.address.nullOrEmpty) {
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
    KycDocument kycDocument = documentsMap[kycDocType[id]];
    bool isNeeded = nextTierDocList.contains(kycDocType[id]);

    if (kycDocument == null) return isNeeded;
    return kycDocument.status.toLowerCase() == 'declined';
  }

  void openNextPage(String route, {Object arguments, bool fromMain = true}) =>
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
    if (value != null && value.isNotEmpty && value.length >= 3) {
      return null;
    } else {
      return 'Too short';
    }
  }
}
