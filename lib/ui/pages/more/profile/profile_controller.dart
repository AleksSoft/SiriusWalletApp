import 'package:antares_wallet/models/account_data.dart';
import 'package:antares_wallet/models/personal_data.dart';
import 'package:antares_wallet/repositories/profile_repository.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  static ProfileController get con => Get.find();
  final ProfileRepository _repository = Get.find<ProfileRepository>();

  PersonalData get personalData => _repository.personalData;
  AccountData get accountData => _repository.accountData;

  @override
  void onInit() async {
    await _repository.updateProfile();
    super.onInit();
  }

  void upgradeAccount() async {
    await _repository.upgradeAccount();
    Get.until((route) => route.isFirst);
  }
}
