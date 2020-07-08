import 'package:antares_wallet/models/account_data.dart';
import 'package:antares_wallet/models/personal_data.dart';
import 'package:antares_wallet/services/repositories/profile_repository.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  static ProfileController get con => Get.find();
  final ProfileRepository _repository = Get.find<ProfileRepository>();

  PersonalData get personalData => _repository.personalData;
  AccountData get accountData => _repository.accountData;

  @override
  void onInit() async {
    super.onInit();
    await _repository.updateProfile();
    update();
  }

  void upgradeAccount() async {
    await _repository.upgradeAccount();
    update();
  }
}
