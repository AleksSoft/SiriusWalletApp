import 'package:antares_wallet/repositories/profile_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  static ProfileController get con => Get.find();

  final _personalData = PersonalData().obs;
  PersonalData get personalData => this._personalData.value;
  set personalData(PersonalData value) => this._personalData.value = value;

  final _tierInfo = TierInfoPayload().obs;
  TierInfoPayload get tierInfo => this._tierInfo.value;
  set tierInfo(TierInfoPayload value) => this._tierInfo.value = value;

  double get limitPercent {
    double doubleCurrent =
        double.tryParse(tierInfo?.currentTier?.current ?? '0') ?? 0.0;
    double doubleMax =
        double.tryParse(tierInfo?.currentTier?.maxLimit ?? '0') ?? 1.0;
    return (doubleCurrent * 100) / doubleMax;
  }

  @override
  void onInit() async {
    personalData = await ProfileRepository.getPersonalData();
    tierInfo = await ProfileRepository.getTierInfo();
    super.onInit();
  }

  void upgradeAccount() async {
    // await _repository.upgradeAccount();
    // Get.until((route) => route.isFirst);
  }
}
