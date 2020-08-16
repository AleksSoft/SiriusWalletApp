import 'package:antares_wallet/models/account_data.dart';
import 'package:antares_wallet/models/personal_data.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  static ProfileController get con => Get.find();

  PersonalData get personalData => PersonalData();
  AccountData get accountData => AccountData();

  @override
  void onInit() async {
    // await _repository.updateProfile();
    super.onInit();
  }

  void upgradeAccount() async {
    // await _repository.upgradeAccount();
    // Get.until((route) => route.isFirst);
  }
}
