import 'package:antares_wallet/business/dto/account_data.dart';
import 'package:antares_wallet/business/dto/asset_dictionary_data.dart';
import 'package:antares_wallet/business/dto/personal_data.dart';
import 'package:antares_wallet/business/dto/portfolio_history_item.dart';
import 'package:antares_wallet/business/dto/support.dart';

class MockApi {
  static const String lykkeIconUrl =
      'http://icons.iconarchive.com/icons/cjdowner/cryptocurrency/32/Lykke-icon.png';

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
        ..asset = (AssetData()
          ..id = '1'
          ..categoryId = 'crypto'
          ..canBeBase = true
          ..icon = lykkeIconUrl
          ..displayName = 'Lykke coin'
          ..symbol = 'LKK'
          ..toBaseInstrumentAssetPairId = '1'
          ..toBaseInstrumentIsMultiply = false)
        ..type = 'Undefined'
        ..status = 'Completed'
        ..amount = 0.0037
        ..timestamp = DateTime.now()
            .subtract(Duration(days: 1))
            .millisecondsSinceEpoch // day ago
        ..explorerItems = <ExplorerItem>[
          ExplorerItem()
            ..name = 'Smth else'
            ..url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
        ]
        ..transactionType = TransactionType.withdraw
        ..transactionHash = this.hashCode,
      PortfolioHistoryItem()
        ..asset = (AssetData()
          ..id = '2'
          ..categoryId = 'crypto'
          ..canBeBase = true
          ..icon = lykkeIconUrl
          ..displayName = 'Bitcoin'
          ..symbol = 'BTC'
          ..toBaseInstrumentAssetPairId = '2'
          ..toBaseInstrumentIsMultiply = false)
        ..type = 'Undefined'
        ..status = 'Completed'
        ..amount = 54.02
        ..timestamp = DateTime.now()
            .subtract(Duration(days: 7))
            .millisecondsSinceEpoch // week ago
        ..explorerItems = <ExplorerItem>[
          ExplorerItem()
            ..name = 'Lykke'
            ..url = 'https://www.lykke.com',
          ExplorerItem()
            ..name = 'Smth else'
            ..url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
        ]
        ..transactionType = TransactionType.withdraw
        ..transactionHash = this.hashCode,
      PortfolioHistoryItem()
        ..asset = (AssetData()
          ..id = '3'
          ..categoryId = 'crypto'
          ..canBeBase = true
          ..icon = lykkeIconUrl
          ..displayName = 'Ethereum classic'
          ..symbol = 'ETC'
          ..toBaseInstrumentAssetPairId = '3'
          ..toBaseInstrumentIsMultiply = false)
        ..type = 'Undefined'
        ..status = 'Completed'
        ..amount = 0.002
        ..timestamp = DateTime.now()
            .subtract(Duration(days: 30))
            .millisecondsSinceEpoch // month ago
        ..explorerItems = <ExplorerItem>[
          ExplorerItem()
            ..name = 'Lykke'
            ..url = 'https://www.lykke.com',
          ExplorerItem()
            ..name = 'Smth else'
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
      ..asset = (AssetData()
        ..id = '4'
        ..categoryId = 'crypto'
        ..canBeBase = false
        ..icon = lykkeIconUrl
        ..displayName = 'Neo'
        ..symbol = 'NEO'
        ..toBaseInstrumentAssetPairId = '4'
        ..toBaseInstrumentIsMultiply = false)
      ..type = 'Undefined'
      ..status = 'Completed'
      ..amount = 150
      ..timestamp = DateTime.now().millisecondsSinceEpoch // now
      ..transactionType = TransactionType.deposit);
    return items;
  }

  Future<AssetDictionaryData> fetchAssetDictionary() async {
    List<AssetData> assetList = [
      AssetData()
        ..id = '1'
        ..categoryId = 'crypto'
        ..canBeBase = true
        ..icon = lykkeIconUrl
        ..displayName = 'Lykke coin'
        ..symbol = 'LKK'
        ..toBaseInstrumentAssetPairId = '1'
        ..toBaseInstrumentIsMultiply = false,
      AssetData()
        ..id = '2'
        ..categoryId = 'crypto'
        ..canBeBase = true
        ..icon = lykkeIconUrl
        ..displayName = 'Bitcoin'
        ..symbol = 'BTC'
        ..toBaseInstrumentAssetPairId = '2'
        ..toBaseInstrumentIsMultiply = false,
      AssetData()
        ..id = '3'
        ..categoryId = 'crypto'
        ..canBeBase = true
        ..icon = lykkeIconUrl
        ..displayName = 'Ethereum classic'
        ..symbol = 'ETC'
        ..toBaseInstrumentAssetPairId = '3'
        ..toBaseInstrumentIsMultiply = false,
      AssetData()
        ..id = '4'
        ..categoryId = 'crypto'
        ..canBeBase = false
        ..icon = lykkeIconUrl
        ..displayName = 'Neo'
        ..symbol = 'NEO'
        ..toBaseInstrumentAssetPairId = '4'
        ..toBaseInstrumentIsMultiply = false,
      AssetData()
        ..id = '5'
        ..categoryId = 'currency'
        ..canBeBase = true
        ..icon = lykkeIconUrl
        ..displayName = 'USD'
        ..symbol = 'USD'
        ..toBaseInstrumentAssetPairId = '5'
        ..toBaseInstrumentIsMultiply = false,
      AssetData()
        ..id = '6'
        ..categoryId = 'currency'
        ..canBeBase = true
        ..icon = lykkeIconUrl
        ..displayName = 'RUB'
        ..symbol = 'RUB'
        ..toBaseInstrumentAssetPairId = '6'
        ..toBaseInstrumentIsMultiply = false,
    ];
    List<CategoryData> categoryList = [
      CategoryData()
        ..categoryId = 'currency'
        ..categoryName = 'Currencies'
        ..sortPriority = 1,
      CategoryData()
        ..categoryId = 'crypto'
        ..categoryName = 'Crypto'
        ..sortPriority = 2,
    ];
    return AssetDictionaryData()
      ..assetList = assetList
      ..categoryList = categoryList;
  }
}
