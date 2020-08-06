import 'dart:async';

import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';

class OrderDetailsController extends GetxController {
  static OrderDetailsController get con => Get.find();

  static final orderTypes = ['Limit', 'Market'];

  static final _api = Get.find<ApiService>();

  final _portfolioCon = PortfolioController.con;

  StreamSubscription _orderbookSubscr;

  final _isBuy = (Get.parameters['operationType'].toLowerCase() == 'buy').obs;
  bool get isBuy => this._isBuy.value;
  set isBuy(bool value) => this._isBuy.value = value;

  final _orderType = 'Limit'.obs;
  String get orderType => this._orderType.value;
  set orderType(String value) => this._orderType.value = value;

  final _price = ''.obs;
  String get price => this._price.value;
  set price(String value) => this._price.value = value;

  final _amount = 0.0.obs;
  double get amount => this._amount.value;
  set amount(double value) => this._amount.value = value;

  final _initialMarket = MarketModel.empty().obs;
  MarketModel get initialMarket => this._initialMarket.value;
  set initialMarket(MarketModel value) => this._initialMarket.value = value;

  final _marketModel = MarketsResponse_MarketModel.getDefault().obs;
  MarketsResponse_MarketModel get marketModel => this._marketModel.value;
  set marketModel(MarketsResponse_MarketModel value) =>
      this._marketModel.value = value;

  final asks = List<Orderbook_PriceVolume>().obs;

  final bids = List<Orderbook_PriceVolume>().obs;

  final _defaultHeight =
      (Get.height - (Get.context.mediaQueryPadding.top + 56.0 * 2));
  double get defaultHeight => _defaultHeight;

  int get orderbookItemsCount => (defaultHeight / 2) ~/ AppSizes.extraLarge;

  @override
  void onInit() async {
    // load pair market data
    await updateWithMarket(Get.arguments as MarketModel);
    super.onInit();
  }

  @override
  void onClose() async {
    // close orderbook stream subscription
    if (_orderbookSubscr != null) await _orderbookSubscr.cancel();
    super.onClose();
  }

  String get assetPairHeader =>
      '${initialMarket.pairBaseAsset.displayId}/${initialMarket.pairQuotingAsset.displayId}';

  String get baseBalance =>
      _portfolioCon.assetBalance(initialMarket.pairBaseAsset.id)?.available;
  String get quotingBalance =>
      _portfolioCon.assetBalance(initialMarket.pairQuotingAsset.id)?.available;

  updateWithMarket(MarketModel data) async {
    initialMarket = data;
    marketModel = (await MarketsController.con
            .getMarkets(assetPairId: initialMarket.pairId))
        .first;

    // load balances
    await _portfolioCon.getBalances();

    if (_orderbookSubscr != null) {
      await _orderbookSubscr.cancel();
      asks.clear();
      bids.clear();
    }
    // subscribe to orderbook stream
    _orderbookSubscr = _api.clientSecure
        .getOrderbookUpdates(
            OrderbookUpdatesRequest()..assetPairId = initialMarket.pairId)
        .listen((Orderbook update) {
      asks.addAllNonNull(update?.asks);
      bids.addAllNonNull(update?.bids);
    });
  }

  updatePercent(num percent) {}

  perform() {}
}
