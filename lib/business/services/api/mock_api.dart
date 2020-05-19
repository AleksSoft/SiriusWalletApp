import 'package:sirius/business/dto/account_data.dart';
import 'package:sirius/business/dto/personal_data.dart';
import 'package:sirius/business/dto/support.dart';

class MockApi {
  Future<Support> fetchSupport() async {
    await Future.delayed(Duration(milliseconds: 300));
    return Support()
      ..helpUrl = 'http://lykke.zendesk.com'
      ..email = 'support@lykke.com'
      ..phone = '+41 43 508 63 79';
  }

  Future<PersonalData> fetchPersonalData() async {
    await Future.delayed(Duration(milliseconds: 300));
    return PersonalData()
      ..fullName = 'Test User'
      ..email = 'testuser@test.io'
      ..contactPhone = '+41 43 508 63 79'
      ..country = 'UK';
  }

  Future<AccountData> fetchAccountLevel() async {
    await Future.delayed(Duration(milliseconds: 300));
    return AccountData()
      ..level = 'Beginner'
      ..depositLimit = 0
      ..currentDeposit = 0
      ..currency = 'EUR';
  }

  Future<AccountData> upgradeAccountLevel() async {
    await Future.delayed(Duration(milliseconds: 300));
    return AccountData()
      ..level = 'Advanced'
      ..depositLimit = 7500
      ..currentDeposit = 1370.57
      ..currency = 'EUR';
  }
}
