import 'package:antares_wallet/business/dto/account_data.dart';
import 'package:antares_wallet/business/dto/personal_data.dart';
import 'package:antares_wallet/business/dto/portfolio_history_item.dart';
import 'package:antares_wallet/business/dto/support.dart';

class MockApi {
  Future<Support> fetchSupport() async {
    await Future.delayed(Duration(seconds: 1));
    return Support()
      ..helpUrl = 'http://lykke.zendesk.com'
      ..email = 'support@lykke.com'
      ..phone = '+41 43 508 63 79';
  }

  Future<PersonalData> fetchPersonalData() async {
    await Future.delayed(Duration(seconds: 1));
    return PersonalData()
      ..fullName = 'Test User'
      ..email = 'testuser@test.io'
      ..contactPhone = '+41 43 508 63 79'
      ..country = 'UK';
  }

  Future<AccountData> fetchAccountLevel() async {
    await Future.delayed(Duration(seconds: 1));
    return AccountData()
      ..level = 'Beginner'
      ..depositLimit = 0
      ..currentDeposit = 0
      ..currency = 'EUR';
  }

  Future<AccountData> upgradeAccountLevel() async {
    await Future.delayed(Duration(seconds: 1));
    return AccountData()
      ..level = 'Advanced'
      ..depositLimit = 7500
      ..currentDeposit = 1370.57
      ..currency = 'EUR';
  }

  Future<List<PortfolioHistoryItem>> fetchPortfolioHistry() async {
    await Future.delayed(Duration(seconds: 1));
    List<PortfolioHistoryItem> items = new List();
    items.addAll(<PortfolioHistoryItem>[
      PortfolioHistoryItem()
        ..asset = 'BTC'
        ..type = 'Undefined'
        ..status = 'Completed'
        ..amount = 0.0037
        ..timestamp = 1589919689 //2020-05-19T20:21:29+00:00
        ..explorerItems = <ExplorerItem>[
          ExplorerItem()
            ..name = 'Smth'
            ..url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
        ]
        ..transactionType = TransactionType.withdraw
        ..transactionHash = this.hashCode,
      PortfolioHistoryItem()
        ..asset = 'XLM'
        ..type = 'Undefined'
        ..status = 'Completed'
        ..amount = 54.02
        ..timestamp = 1589401289 //2020-05-13T20:21:29+00:00
        ..explorerItems = <ExplorerItem>[
          ExplorerItem()
            ..name = 'Lykke'
            ..url = 'https://www.lykke.com',
          ExplorerItem()
            ..name = 'Smth'
            ..url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
        ]
        ..transactionType = TransactionType.withdraw
        ..transactionHash = this.hashCode,
      PortfolioHistoryItem()
        ..asset = 'BTC'
        ..type = 'Undefined'
        ..status = 'Completed'
        ..amount = 0.002
        ..timestamp = 1587414089 //2020-04-20T20:21:29+00:00
        ..explorerItems = <ExplorerItem>[
          ExplorerItem()
            ..name = 'Lykke'
            ..url = 'https://www.lykke.com',
          ExplorerItem()
            ..name = 'Smth'
            ..url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
        ]
        ..transactionType = TransactionType.deposit
        ..transactionHash = this.hashCode,
    ]);
    return items;
  }

  Future<List<PortfolioHistoryItem>> updatePortfolioHistory() async {
    List<PortfolioHistoryItem> items = await fetchPortfolioHistry();
    items.add(PortfolioHistoryItem()
      ..asset = 'CHF'
      ..type = 'Undefined'
      ..status = 'Completed'
      ..amount = 150
      ..timestamp = 1590002489 //2020-05-20T19:21:29+00:00
      ..transactionType = TransactionType.deposit);
    return items;
  }
}
