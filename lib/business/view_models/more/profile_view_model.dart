import 'package:antares_wallet/business/dto/account_data.dart';
import 'package:antares_wallet/business/dto/personal_data.dart';
import 'package:antares_wallet/business/managers/profile_manager.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
  ProfileManager _manager;

  ProfileViewModel() {
    this._manager = ProfileManager();
    setBusy(true);
  }

  PersonalData _personalData = PersonalData();
  AccountData _accountData = AccountData();

  PersonalData get personalData => _personalData;
  AccountData get accountData => _accountData;

  Future initialise() async {
    _personalData = await _manager.loadPersonalData();
    _accountData = await _manager.loadAccountData();
    setBusy(false);
  }

  Future upgradeAccount() async {
    _accountData = await runBusyFuture(_manager.upgradeAccount());
  }
}
