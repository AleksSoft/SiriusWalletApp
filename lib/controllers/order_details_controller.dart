import 'dart:async';

import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/controllers/orders_controller.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/repositories/trading_repository.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/services/local_auth_service.dart';
import 'package:antares_wallet/app/utils/orderbook_utils.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/local_auth/local_auth_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OrderDetailsArguments {
  final List<Orderbook_PriceVolume> bids;
  final List<Orderbook_PriceVolume> asks;
  final String price;
  final String amount;
  final String total;
  final String pairId;
  final String orderId;
  final bool isBuy;
  final bool isEdit;

  OrderDetailsArguments(
    this.pairId,
    this.isBuy, {
    this.isEdit,
    this.orderId,
    this.price,
    this.amount,
    this.total,
    this.bids,
    this.asks,
  });
}

class OrderDetailsController extends GetxController {
  static OrderDetailsController get con => Get.find();

  final _storage = GetStorage();

  static final orderTypes = ['Limit', 'Market'];

  static final _api = Get.find<ApiService>();

  final _portfolioCon = PortfolioController.con;

  StreamSubscription _orderbookSubscr;

  final priceTextController = TextEditingController();
  String get price => priceTextController.text;
  set price(String value) => priceTextController.text = value;

  final totalTextController = TextEditingController();
  String get total => totalTextController.text;
  set total(String value) => totalTextController.text = value;

  bool _signOrders = false;
  bool get signOrders => this._signOrders;

  final TextEditingController amountTextController = TextEditingController();
  final _amount = '0.0'.obs;
  String get amount => this._amount.value;
  set amount(String value) {
    amountTextController.text = value;
    this._amount.value = amountTextController.text;
    _updateAllowed();
  }

  final RxBool _loading = false.obs;
  bool get loading => this._loading.value;
  set loading(bool value) => this._loading.value = value;

  final RxBool _isBuy = false.obs;
  bool get isBuy => this._isBuy.value;
  set isBuy(bool value) => this._isBuy.value = value;

  final _orderType = orderTypes[0].obs;
  String get orderType => this._orderType.value;
  set orderType(String value) => this._orderType.value = value;

  final RxBool _locked = false.obs;
  bool get locked => this._locked.value;
  set locked(bool value) => this._locked.value = value;

  final RxBool _actionAllowed = false.obs;
  bool get actionAllowed => this._actionAllowed.value;
  set actionAllowed(bool value) => this._actionAllowed.value = value;

  final _marketModel = MarketModel.empty().obs;
  MarketModel get marketModel => this._marketModel.value;
  set marketModel(MarketModel value) => this._marketModel.value = value;

  final _mid = 0.0.obs;
  double get mid => this._mid.value;
  set mid(double value) => this._mid.value = value;

  final _midPercent = 0.0.obs;
  double get midPercent => this._midPercent.value;
  set midPercent(double value) => this._midPercent.value = value;

  final asks = <Orderbook_PriceVolume>[].obs;

  final bids = <Orderbook_PriceVolume>[].obs;

  final _defaultHeight =
      (Get.height - (Get.context.mediaQueryPadding.top + 56.0));

  bool isEdit;
  String _orderId;

  @override
  void onInit() {
    // initial data
    _signOrders = _storage.read(AppStorageKeys.signOrders) ?? false;

    // init with arguments
    final arguments = Get.arguments as OrderDetailsArguments;
    _initWithArguments(arguments);
    midPercent = _getMidPercent();

    // load pair market data
    updateWithPairId(arguments.pairId);

    super.onInit();
  }

  @override
  Future<void> onClose() async {
    // close orderbook stream subscription
    await _orderbookSubscr?.cancel();
    super.onClose();
  }

  String get assetPairHeader =>
      '${marketModel.pairBaseAsset.displayId}/${marketModel.pairQuotingAsset.displayId}';

  String get baseBalance =>
      _portfolioCon.assetBalance(marketModel.pairBaseAsset.id)?.available;
  String get quotingBalance =>
      _portfolioCon.assetBalance(marketModel.pairQuotingAsset.id)?.available;

  double get defaultHeight => _defaultHeight;
  int get orderbookItemsCount =>
      (((defaultHeight) ~/ AppSizes.extraLarge) - 1) ~/ 2;

  bool get liquidityError {
    double amountDouble = (double.tryParse(amount) ?? 0.0);
    if (orderType == OrderDetailsController.orderTypes[1]) {
      if (isBuy) {
        return asksVolumeSum < amountDouble;
      } else {
        return bidsVolumeSum < amountDouble;
      }
    }
    return false;
  }

  double get asksVolumeSum => asks.fold(
        0.0,
        (prev, curr) => prev + double.tryParse(curr.v) ?? 0.0,
      );

  double get bidsVolumeSum => bids.fold(
        0.0,
        (prev, curr) => prev + double.tryParse(curr.v) ?? 0.0,
      );

  void reloadUiWithPairId(String pairId) {
    bids.clear();
    asks.clear();
    updateWithPairId(pairId);
  }

  Future<void> updateWithPairId(String pairId) async {
    marketModel = MarketsController.con.marketModelByPairId(pairId);

    if (isEdit) {
      final arguments = Get.arguments as OrderDetailsArguments;
      price = (double.tryParse(arguments.price) ?? 0.0).toString();
      total = (double.tryParse(arguments.total) ?? 0.0).toString();
      amount = (double.tryParse(arguments.amount) ?? 0.0).toString();
    } else {
      reloadTextValues();
    }

    // load balances
    await _portfolioCon.getBalances();

    // subscribe to orderbook stream
    await _orderbookSubscr?.cancel();
    _orderbookSubscr = _api.clientSecure
        .getOrderbookUpdates(OrderbookUpdatesRequest()..assetPairId = pairId)
        .map((event) {
      return OrderbookUtils.getMergedOrderbook(
        Orderbook()..bids.addAll(bids)..asks.addAll(asks),
        event,
      );
    }).listen((update) {
      bids.assignAll(update.bids);
      asks.assignAll(update.asks);
      mid = _getMid();
      midPercent = _getMidPercent();
    });
  }

  void reloadTextValues() {
    String orderBookPrice;
    try {
      if (orderType == orderTypes[0]) {
        orderBookPrice = (isBuy ? bids.first?.p : asks.first?.p) ??
            marketModel.price.toString();
      } else {
        orderBookPrice = (isBuy ? asks.first?.p : bids.first?.p) ??
            marketModel.price.toString();
      }
    } catch (e) {
      orderBookPrice = marketModel.price.toString();
    }

    price = orderBookPrice;
    amount = '';
    total = '';
  }

  void updatePercent(double percent) {
    double priceValue = double.tryParse(price) ?? 0.0;
    double balance =
        double.tryParse(isBuy ? quotingBalance : baseBalance) ?? 0.0;
    double amountValue =
        isBuy ? (balance * percent) / priceValue : balance * percent;
    amount = amountValue.toString();
    total = _countTotal().toString();
  }

  Future<void> perform() async {
    String assetPairId = marketModel?.pairId;
    String assetId = marketModel?.pairBaseAsset?.id;
    double vol = double.tryParse(amount) ?? 0.0;
    double pr = double.tryParse(price) ?? 0.0;

    loading = true;

    OrderModel response = await _placeOrder(assetPairId, assetId, vol, pr);

    if (response == null) {
      Get.snackbar(
        null,
        'Order failed',
        colorText: AppColors.primary,
        backgroundColor: AppColors.red,
      );
      loading = false;
    } else {
      await OrdersController.con.getOrders();
      loading = false;
      Get.back();
      Get.rawSnackbar(message: 'Order placed');
    }
  }

  Future<void> modify() async {
    if (!_orderId.isNullOrBlank) {
      loading = true;
      await OrdersController.con.cancelOrder(_orderId);
      await perform();
      loading = false;
      Get.back();
    }
  }

  void priceChanged(String s) {
    total = _countTotal().toString();
    _updateAllowed();
  }

  void amountChanged(String s) {
    amount = _countTotal().toString();
  }

  void totalChanged(String s) {
    amount = _countAmount().toString();
  }

  double volumeAskPercent(int index) {
    var maxAskVol = OrderbookUtils.maxVol(asks);
    return maxAskVol <= 0
        ? 0
        : (double.tryParse(asks[index].v) ?? 0.0) / maxAskVol;
  }

  double volumeBidPercent(int index) {
    var maxBidVol = OrderbookUtils.maxVol(bids);
    return maxBidVol <= 0
        ? 0
        : (double.tryParse(bids[index].v) ?? 0.0) / maxBidVol;
  }

  void updateTradeMode(bool value) {
    isBuy = value;
    reloadTextValues();
  }

  void bidPricePressed(String p) {
    orderType = orderTypes[0];
    isBuy = true;
    amount = '0.0';
    price = p;
  }

  void bidVolumePressed(String v) {
    orderType = orderTypes[1];
    isBuy = false;
    amount = v;
  }

  void askPricePressed(String p) {
    orderType = orderTypes[0];
    isBuy = false;
    amount = '0.0';
    price = p;
  }

  void askVolumePressed(String v) {
    orderType = orderTypes[1];
    isBuy = true;
    amount = v;
  }

  double _countTotal() {
    double p = double.tryParse(price) ?? 0.0;
    double a = double.tryParse(amount) ?? 0.0;
    return p * a;
  }

  double _countAmount() {
    double p = double.tryParse(price) ?? 0.0;
    double t = double.tryParse(total) ?? 0.0;
    return t / p;
  }

  double _getMid() {
    double topBid = bids.length > 0 ? double.tryParse(bids[0].p) ?? 0.0 : 0.0;
    double topAsk = asks.length > 0 ? double.tryParse(asks[0].p) ?? 0.0 : 0.0;
    return (topBid + topAsk) / 2;
  }

  double _getMidPercent() {
    double topBid = bids.length > 0 ? double.tryParse(bids[0].p) ?? 0.0 : 0.0;
    double topAsk = asks.length > 0 ? double.tryParse(asks[0].p) ?? 0.0 : 0.0;
    return ((topAsk - topBid) / mid) * 100;
  }

  void _updateAllowed() {
    String strBalance = isBuy ? quotingBalance : baseBalance;
    double balance = double.tryParse(strBalance ?? '0.0') ?? 0.0;
    double a = double.tryParse(amount) ?? 0.0;
    locked = isBuy ? _countTotal() > balance : a > balance;
    actionAllowed = !locked && a > 0 && !liquidityError;
  }

  void _initWithArguments(OrderDetailsArguments arguments) {
    bids.assignAll(arguments?.bids ?? []);
    asks.assignAll(arguments?.asks ?? []);
    mid = _getMid();
    isBuy = arguments.isBuy ?? false;
    isEdit = arguments.isEdit ?? false;
    _orderId = arguments.orderId;
  }

  Future<OrderModel> _placeOrder(
    String assetPairId,
    String assetId,
    double volume,
    double price,
  ) async {
    // check pin if sign orders enabled
    if (_signOrders) {
      bool checkLocalAuth = await LocalAuthService.canCheckBiometrics;
      await Get.to(
        LocalAuthPage(checkLocalAuth: checkLocalAuth),
        fullscreenDialog: true,
      );
    }

    // place order
    OrderModel response;
    if (orderType.toLowerCase() == 'limit') {
      response = await TradingRepository.placeLimitOrder(
        assetPairId: assetPairId,
        assetId: assetId,
        volume: isBuy ? volume : volume * -1,
        price: price,
      );
    } else if (orderType.toLowerCase() == 'market') {
      response = await TradingRepository.placeMarketOrder(
        assetPairId: assetPairId,
        assetId: assetId,
        volume: isBuy ? volume : volume * -1,
      );
    }
    return response;
  }
}
