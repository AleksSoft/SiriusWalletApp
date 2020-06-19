import 'package:antares_wallet/models/account_data.dart';
import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/models/asset_pair_data.dart';
import 'package:antares_wallet/models/order_data.dart';
import 'package:antares_wallet/models/personal_data.dart';
import 'package:antares_wallet/models/portfolio_history_item.dart';
import 'package:antares_wallet/models/support.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
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

  Future<AssetData> fetchBaseAsset() async {
    return (await fetchAssetDictionary())
        .assetList
        .firstWhere((e) => e.id == '12');
  }

  Future<List<AssetPairData>> fetchAssetPairs() async {
    return [
      AssetPairData(
        mainAssetName: 'USD',
        mainAssetSymbol: 'USD',
        secAssetSymbol: 'CHF',
        mainAssetImgUrl: lykkeIconUrl,
        mainPrice: 0.95018,
        basePrice: 0.99,
        volume: 15.43,
        change: -0.07,
      ),
      AssetPairData(
        mainAssetName: 'EUR',
        mainAssetSymbol: 'EUR',
        secAssetSymbol: 'CHF',
        mainAssetImgUrl: lykkeIconUrl,
        mainPrice: 1.06964,
        basePrice: 1.12,
        volume: 601.42,
        change: 0.01,
      ),
      AssetPairData(
        mainAssetName: 'Bitcoin',
        mainAssetSymbol: 'BTC',
        secAssetSymbol: 'CHF',
        mainAssetImgUrl: lykkeIconUrl,
        mainPrice: 8999.353,
        basePrice: 9440.01,
        volume: 1.68,
        change: 1.11,
      ),
      AssetPairData(
        mainAssetName: 'Ethereum',
        mainAssetSymbol: 'ETH',
        secAssetSymbol: 'CHF',
        mainAssetImgUrl: lykkeIconUrl,
        mainPrice: 222.00,
        basePrice: 232.87,
        volume: 4.59,
        change: 1.83,
      ),
    ];
  }

  List<OrderData> fetchOpenedOrders() {
    return [
      OrderData(
        mainAssetSymbol: 'USD',
        secAssetSymbol: 'CHF',
        date: '3.6.2020 17:55',
        avgPrice: 0.986,
        price: 0.97684,
        filled: 19,
        amount: 22,
        cancelled: false,
        id: 1,
      ),
      OrderData(
        mainAssetSymbol: 'USD',
        secAssetSymbol: 'CHF',
        date: '3.6.2020 17:55',
        avgPrice: 0.986,
        price: 0.97684,
        filled: 16,
        amount: 22,
        cancelled: false,
        id: 2,
      ),
      OrderData(
        mainAssetSymbol: 'USD',
        secAssetSymbol: 'CHF',
        date: '3.6.2020 17:55',
        avgPrice: 0.986,
        price: 0.97684,
        filled: 20,
        amount: 22,
        cancelled: false,
        id: 3,
      ),
      OrderData(
        mainAssetSymbol: 'USD',
        secAssetSymbol: 'CHF',
        date: '3.6.2020 17:55',
        avgPrice: 0.986,
        price: 0.97684,
        filled: 20,
        amount: 22,
        cancelled: false,
        id: 4,
      ),
      OrderData(
        mainAssetSymbol: 'USD',
        secAssetSymbol: 'CHF',
        date: '3.6.2020 17:55',
        avgPrice: 0.986,
        price: 0.97684,
        filled: 20,
        amount: 22,
        cancelled: false,
        id: 5,
      ),
    ];
  }

  List<OrderData> fetchHistoryOrders() {
    return [
      OrderData(
        mainAssetSymbol: 'USD',
        secAssetSymbol: 'CHF',
        date: '3.6.2020 17:55',
        avgPrice: 0.986,
        price: 0.97684,
        filled: 22,
        amount: 22,
        cancelled: false,
        id: 6,
      ),
      OrderData(
        mainAssetSymbol: 'USD',
        secAssetSymbol: 'CHF',
        date: '3.6.2020 17:55',
        avgPrice: 0.986,
        price: 0.97684,
        filled: 22,
        amount: 22,
        cancelled: false,
        id: 7,
      ),
      OrderData(
        mainAssetSymbol: 'USD',
        secAssetSymbol: 'CHF',
        date: '3.6.2020 17:55',
        avgPrice: 0,
        price: 0.97684,
        filled: 0,
        amount: 22,
        cancelled: true,
        id: 8,
      ),
      OrderData(
        mainAssetSymbol: 'USD',
        secAssetSymbol: 'CHF',
        date: '3.6.2020 17:55',
        avgPrice: 0,
        price: 0.97684,
        filled: 0,
        amount: 22,
        cancelled: true,
        id: 9,
      ),
    ];
  }
}
