import 'package:antares_wallet/business/models/account_data.dart';
import 'package:antares_wallet/business/models/personal_data.dart';
import 'package:antares_wallet/business/repositories/profile_repository.dart';
import 'package:antares_wallet/locator.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
  final ProfileRepository _repository = locator<ProfileRepository>();

  PersonalData get personalData => _repository.personalData;
  AccountData get accountData => _repository.accountData;

  void initialise() {
    _repository.updateProfile().whenComplete(() => notifyListeners());
  }

  void upgradeAccount() {
    runBusyFuture(_repository.upgradeAccount());
  }
}
