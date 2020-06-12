import 'package:antares_wallet/business/models/account_data.dart';
import 'package:antares_wallet/business/models/asset_dictionary_data.dart';
import 'package:antares_wallet/business/models/personal_data.dart';
import 'package:antares_wallet/business/models/portfolio_history_item.dart';
import 'package:antares_wallet/business/models/support.dart';

class MockApiService {
  static const String lykkeIconUrl =
      'https://logos-download.com/wp-content/uploads/2018/05/Lykke_logo_lkk.png';

  final Support _support = Support()
    ..helpUrl = 'http://lykke.zendesk.com'
    ..email = 'support@lykke.com'
    ..phone = '+41 43 508 63 79';

  final PersonalData _personalData = PersonalData()
    ..firstName = 'User'
    ..lastName = 'Test'
    ..email = 'testuser@test.io'
    ..contactPhone = '+41 43 508 63 79'
    ..country = 'UK';

  final AccountData _accountData = AccountData()
    ..level = AccountLevel.beginner
    ..depositLimit = 0
    ..currentDeposit = 0
    ..currency = 'EUR';

  Future<Support> fetchSupport() async => _support;

  Future<PersonalData> fetchPersonalData() async => _personalData;

  Future<AccountData> fetchAccountLevel() async => _accountData;

  Future<AccountData> upgradeAccountLevel() async {
    return _accountData
      ..level = AccountLevel.advanced
      ..depositLimit = 7500
      ..currentDeposit = 1370.57
      ..currency = 'EUR';
  }

  Future<List<PortfolioHistoryItem>> fetchPortfolioHistry() async {
    AssetDictionaryData assetDictionary = await fetchAssetDictionary();
    List<PortfolioHistoryItem> items = new List();
    items.addAll(<PortfolioHistoryItem>[
      PortfolioHistoryItem()
        ..asset = assetDictionary.assetList.firstWhere(
          (asset) => asset.id == '3',
        )
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
        ..asset = assetDictionary.assetList.firstWhere(
          (asset) => asset.id == '5',
        )
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
        ..asset = assetDictionary.assetList.firstWhere(
          (asset) => asset.id == '6',
        )
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
    AssetDictionaryData assetDictionary = await fetchAssetDictionary();
    items.add(PortfolioHistoryItem()
      ..asset = assetDictionary.assetList.firstWhere(
        (asset) => asset.id == '9',
      )
      ..type = 'Undefined'
      ..status = 'Completed'
      ..amount = 150
      ..timestamp = DateTime.now().millisecondsSinceEpoch // now
      ..explorerItems = <ExplorerItem>[
        ExplorerItem()
          ..name = 'Lykke'
          ..url = 'https://www.lykke.com'
      ]
      ..transactionType = TransactionType.deposit
      ..transactionHash = this.hashCode);
    return items;
  }

  Future<AssetDictionaryData> fetchAssetDictionary() async {
    List<AssetData> assetList = [
      AssetData()
        ..id = '1'
        ..categoryId = 'lykke'
        ..canBeBase = true
        ..icon = lykkeIconUrl
        ..displayName = 'Lykke Share 1-year Forward'
        ..symbol = 'LKK1Y'
        ..toBaseInstrumentAssetPairId = '1'
        ..toBaseInstrumentIsMultiply = false,
      AssetData()
        ..id = '2'
        ..categoryId = 'lykke'
        ..canBeBase = true
        ..icon = lykkeIconUrl
        ..displayName = 'Lykke Share 2-year Forward'
        ..symbol = 'LKK2Y'
        ..toBaseInstrumentAssetPairId = '2'
        ..toBaseInstrumentIsMultiply = false,
      AssetData()
        ..id = '3'
        ..categoryId = 'lykke'
        ..canBeBase = true
        ..icon = lykkeIconUrl
        ..displayName = 'Lykke coin'
        ..symbol = 'LKK'
        ..toBaseInstrumentAssetPairId = '3'
        ..toBaseInstrumentIsMultiply = false,
      AssetData()
        ..id = '4'
        ..categoryId = 'lykke'
        ..canBeBase = true
        ..icon = lykkeIconUrl
        ..displayName = 'LyCI Service Token'
        ..symbol = 'LYCI'
        ..toBaseInstrumentAssetPairId = '4'
        ..toBaseInstrumentIsMultiply = false,
      AssetData()
        ..id = '5'
        ..categoryId = 'crypto'
        ..canBeBase = true
        ..icon = lykkeIconUrl
        ..displayName = 'Bitcoin'
        ..symbol = 'BTC'
        ..toBaseInstrumentAssetPairId = '5'
        ..toBaseInstrumentIsMultiply = false,
      AssetData()
        ..id = '6'
        ..categoryId = 'crypto'
        ..canBeBase = true
        ..icon = lykkeIconUrl
        ..displayName = 'Ethereum'
        ..symbol = 'ETC'
        ..toBaseInstrumentAssetPairId = '6'
        ..toBaseInstrumentIsMultiply = false,
      AssetData()
        ..id = '7'
        ..categoryId = 'crypto'
        ..canBeBase = true
        ..icon = lykkeIconUrl
        ..displayName = 'Litecoin'
        ..symbol = 'LTC'
        ..toBaseInstrumentAssetPairId = '7'
        ..toBaseInstrumentIsMultiply = false,
      AssetData()
        ..id = '8'
        ..categoryId = 'crypto'
        ..canBeBase = true
        ..icon = lykkeIconUrl
        ..displayName = 'Ethereum classic'
        ..symbol = 'ETC'
        ..toBaseInstrumentAssetPairId = '8'
        ..toBaseInstrumentIsMultiply = false,
      AssetData()
        ..id = '9'
        ..categoryId = 'crypto'
        ..canBeBase = false
        ..icon = lykkeIconUrl
        ..displayName = 'Neo'
        ..symbol = 'NEO'
        ..toBaseInstrumentAssetPairId = '9'
        ..toBaseInstrumentIsMultiply = false,
      AssetData()
        ..id = '10'
        ..categoryId = 'currency'
        ..canBeBase = true
        ..icon = lykkeIconUrl
        ..displayName = 'CHF'
        ..symbol = 'CHF'
        ..toBaseInstrumentAssetPairId = '10'
        ..toBaseInstrumentIsMultiply = false,
      AssetData()
        ..id = '11'
        ..categoryId = 'currency'
        ..canBeBase = true
        ..icon = lykkeIconUrl
        ..displayName = 'EUR'
        ..symbol = 'EUR'
        ..toBaseInstrumentAssetPairId = '11'
        ..toBaseInstrumentIsMultiply = false,
      AssetData()
        ..id = '12'
        ..categoryId = 'currency'
        ..canBeBase = true
        ..icon = lykkeIconUrl
        ..displayName = 'USD'
        ..symbol = 'USD'
        ..toBaseInstrumentAssetPairId = '12'
        ..toBaseInstrumentIsMultiply = false,
      AssetData()
        ..id = '13'
        ..categoryId = 'currency'
        ..canBeBase = true
        ..icon = lykkeIconUrl
        ..displayName = 'RUB'
        ..symbol = 'RUB'
        ..toBaseInstrumentAssetPairId = '13'
        ..toBaseInstrumentIsMultiply = false,
    ];
    List<CategoryData> categoryList = [
      CategoryData()
        ..categoryId = 'currency'
        ..categoryName = 'Currencies'
        ..sortPriority = 1,
      CategoryData()
        ..categoryId = 'lykke'
        ..categoryName = 'Lykke'
        ..sortPriority = 2,
      CategoryData()
        ..categoryId = 'crypto'
        ..categoryName = 'Crypto'
        ..sortPriority = 3,
    ];
    return AssetDictionaryData()
      ..assetList = assetList
      ..categoryList = categoryList;
  }
}
