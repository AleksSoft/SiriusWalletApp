import 'dart:async';

import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/controllers/orders_controller.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/repositories/trading_repository.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/services/utils/orderbook_utils.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

  static final orderTypes = ['Limit', 'Market'];

  static final _api = Get.find<ApiService>();

  final priceTextController = TextEditingController();
  final amountTextController = TextEditingController();
  final totalTextController = TextEditingController();
  final _portfolioCon = PortfolioController.con;

  StreamSubscription _orderbookSubscr;

  final _loading = false.obs;
  bool get loading => this._loading.value;
  set loading(bool value) => this._loading.value = value;

  final _isBuy = false.obs;
  bool get isBuy => this._isBuy.value;
  set isBuy(bool value) => this._isBuy.value = value;

  final _orderType = orderTypes[0].obs;
  String get orderType => this._orderType.value;
  set orderType(String value) => this._orderType.value = value;

  final _locked = false.obs;
  bool get locked => this._locked.value;
  set locked(bool value) => this._locked.value = value;

  final _actionAllowed = false.obs;
  bool get actionAllowed => this._actionAllowed.value;
  set actionAllowed(bool value) => this._actionAllowed.value = value;

  final _amount = '0.0'.obs;
  String get amount => this._amount.value;
  set amount(String value) => this._amount.value = value;

  final _marketModel = MarketModel.empty().obs;
  MarketModel get marketModel => this._marketModel.value;
  set marketModel(MarketModel value) => this._marketModel.value = value;

  final _mid = 0.0.obs;
  double get mid => this._mid.value;
  set mid(double value) => this._mid.value = value;

  final _midPercent = 0.0.obs;
  double get midPercent => this._midPercent.value;
  set midPercent(double value) => this._midPercent.value = value;

  final asks = List<Orderbook_PriceVolume>().obs;

  final bids = List<Orderbook_PriceVolume>().obs;

  final _defaultHeight =
      (Get.height - (Get.context.mediaQueryPadding.top + 56.0));

  bool isEdit;
  String _orderId;

  @override
  void onInit() async {
    // initial data
    final arguments = Get.arguments as OrderDetailsArguments;
    bids.assignAll(arguments?.bids ?? []);
    asks.assignAll(arguments?.asks ?? []);
    mid = _getMid();
    midPercent = _getMidPercent();
    isBuy = arguments.isBuy ?? false;
    isEdit = arguments.isEdit ?? false;
    _orderId = arguments.orderId;

    // load pair market data
    await updateWithPairId(arguments.pairId);

    ever(_isBuy, (_) => reloadTextValues());
    ever(_amount, (_) => _updateAllowed());

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

  reloadUiWithPairId(String pairId) {
    bids.clear();
    asks.clear();
    updateWithPairId(pairId);
  }

  updateWithPairId(String pairId) async {
    marketModel = MarketsController.con.marketModelByPairId(pairId);

    if (isEdit) {
      final arguments = Get.arguments as OrderDetailsArguments;
      priceTextController.text =
          (double.tryParse(arguments.price) ?? 0.0).toString();
      totalTextController.text =
          (double.tryParse(arguments.total) ?? 0.0).toString();
      amountTextController.text =
          (double.tryParse(arguments.amount) ?? 0.0).toString();
      amount = amountTextController.text;
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

  reloadTextValues() {
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

    priceTextController.text = orderBookPrice;
    amountTextController.clear();
    amount = amountTextController.text;
    totalTextController.clear();
  }

  updatePercent(double percent) {
    double priceValue = double.tryParse(priceTextController.text) ?? 0.0;
    print('priceValue=$priceValue');
    print('priceTextController.text=${priceTextController.text}');
    double balance =
        double.tryParse(isBuy ? quotingBalance : baseBalance) ?? 0.0;
    print('balance=$balance');
    double amountValue =
        isBuy ? (balance * percent) / priceValue : balance * percent;
    print('amountValue=$amountValue');

    amountTextController.text = amountValue.toString();
    amount = amountTextController.text;
    totalTextController.text = _countTotal().toString();
  }

  perform() async {
    var response;
    String assetPairId = marketModel?.pairId;
    String assetId = marketModel?.pairBaseAsset?.id;
    double volume = double.tryParse(amountTextController.text) ?? 0.0;
    double pirce = double.tryParse(priceTextController.text) ?? 0.0;
    loading = true;
    if (orderType.toLowerCase() == 'limit') {
      response = await TradingRepository.placeLimitOrder(
        assetPairId: assetPairId,
        assetId: assetId,
        volume: isBuy ? volume : volume * -1,
        price: pirce,
      );
    } else if (orderType.toLowerCase() == 'market') {
      response = await TradingRepository.placeMarketOrder(
        assetPairId: assetPairId,
        assetId: assetId,
        volume: isBuy ? volume : volume * -1,
      );
    }
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

  modify() async {
    if (!_orderId.isNullOrBlank) {
      loading = true;
      await OrdersController.con.cancelOrder(_orderId);
      await perform();
      loading = false;
      Get.back();
    }
  }

  priceChanged(String s) {
    totalTextController.text = _countTotal().toString();
    _updateAllowed();
  }

  amountChanged(String s) {
    amount = amountTextController.text;
    totalTextController.text = _countTotal().toString();
  }

  totalChanged(String s) {
    amountTextController.text = _countAmount().toString();
    amount = amountTextController.text;
  }

  double _countTotal() {
    double price = double.tryParse(priceTextController.text) ?? 0.0;
    double amount = double.tryParse(amountTextController.text) ?? 0.0;
    return price * amount;
  }

  double _countAmount() {
    double price = double.tryParse(priceTextController.text) ?? 0.0;
    double total = double.tryParse(totalTextController.text) ?? 0.0;
    return total / price;
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

  _updateAllowed() {
    double balance =
        double.tryParse(isBuy ? quotingBalance : baseBalance) ?? 0.0;
    double amount = double.tryParse(amountTextController.text) ?? 0.0;
    locked = isBuy ? _countTotal() > balance : amount > balance;
    actionAllowed = !locked && amount > 0;
  }
}
