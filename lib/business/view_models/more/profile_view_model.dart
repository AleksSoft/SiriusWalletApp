import 'package:sirius/business/dto/account_data.dart';
import 'package:sirius/business/dto/personal_data.dart';
import 'package:sirius/business/managers/profile_manager.dart';
import 'package:sirius/locator.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
  final _manager = locator<ProfileManager>();

  PersonalData _personalData = PersonalData();
  AccountData _accountData = AccountData();

  PersonalData get personalData => _personalData;
  AccountData get accountData => _accountData;

  Future initialise() async {
    setBusy(true);
    _personalData = await _manager.loadPersonalData();
    _accountData = await _manager.loadAccountData();
    setBusy(false);
  }

  Future upgradeAccount() async {
    _accountData = await runBusyFuture(_manager.upgradeAccount());
  }
}
