import 'dart:convert';

import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/app/store_keys.dart';
import 'package:antares_wallet/models/account_data.dart';
import 'package:antares_wallet/models/personal_data.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:antares_wallet/services/key_store_service.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ProfileRepository {
  final _storage = locator<KeyStoreService>();
  final _api = locator<MockApiService>();

  PersonalData personalData = PersonalData();
  AccountData accountData = AccountData();

  Future<void> updateProfile() async {
    personalData = await loadPersonalData();
    accountData = await loadAccountData();
  }

  Future<PersonalData> loadPersonalData() async {
    PersonalData data = await _storage.readDto<PersonalData>(
      PersonalData(),
      StoreKeys.personalData,
    );
    data = data ?? await _api.fetchPersonalData();
    _storage.write(StoreKeys.personalData, jsonEncode(data.toJson()));
    return data;
  }

  Future<AccountData> loadAccountData() async {
    AccountData data = await _storage.readDto<AccountData>(
      AccountData(),
      StoreKeys.accountData,
    );
    data = data ?? await _api.fetchAccountLevel();
    _storage.write(StoreKeys.accountData, jsonEncode(data.toJson()));
    return data;
  }

  Future<void> upgradeAccount() async {
    accountData = await _api.upgradeAccountLevel();
    _storage.write(StoreKeys.accountData, jsonEncode(accountData.toJson()));
  }
}