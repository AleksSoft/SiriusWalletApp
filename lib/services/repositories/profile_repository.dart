import 'dart:convert';

import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/models/account_data.dart';
import 'package:antares_wallet/models/personal_data.dart';
import 'package:antares_wallet/services/api/mock_api.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class ProfileRepository {
  final _storage = GetStorage();
  final _api = Get.find<MockApiService>();

  PersonalData personalData = PersonalData();
  AccountData accountData = AccountData();

  Future<void> updateProfile() async {
    personalData = await loadPersonalData();
    accountData = await loadAccountData();
  }

  Future<PersonalData> loadPersonalData() async {
    var str = await _storage.read(AppStorageKeys.personalData);

    PersonalData data = str == null
        ? await _api.fetchPersonalData()
        : PersonalData().fromJson(json.decode(str));

    _storage.write(AppStorageKeys.personalData, jsonEncode(data.toJson()));
    return data;
  }

  Future<AccountData> loadAccountData() async {
    var str = await _storage.read(AppStorageKeys.accountData);

    AccountData data = str == null
        ? await _api.fetchAccountLevel()
        : AccountData().fromJson(json.decode(str));

    _storage.write(AppStorageKeys.accountData, jsonEncode(data.toJson()));
    return data;
  }

  Future<void> upgradeAccount() async {
    accountData = await _api.upgradeAccountLevel();
    _storage.write(
      AppStorageKeys.accountData,
      jsonEncode(
        accountData.toJson(),
      ),
    );
  }
}
