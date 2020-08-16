import 'dart:async';

import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:antares_wallet/controllers/orders_controller.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/repositories/trading_repository.dart';
import 'package:antares_wallet/services/api/api_service.dart';
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
  final bool isBuy;

  OrderDetailsArguments(
    this.pairId,
    this.isBuy, {
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

  final _orderType = 'Limit'.obs;
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

  final asks = List<Orderbook_PriceVolume>().obs;

  final bids = List<Orderbook_PriceVolume>().obs;

  final _defaultHeight =
      (Get.height - (Get.context.mediaQueryPadding.top + 56.0));

  @override
  void onInit() async {
    // initial data
    final arguments = Get.arguments as OrderDetailsArguments;
    bids.assignAll(arguments.bids ?? List());
    asks.assignAll(arguments.asks ?? List());

    // load pair market data
    await updateWithPairId(arguments.pairId);

    ever(_isBuy, (_) => reloadTextValues());
    ever(_amount, (_) => _updateAllowed());

    super.onInit();
  }

  @override
  void onClose() async {
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

    reloadTextValues();

    // load balances
    await _portfolioCon.getBalances();

    await _orderbookSubscr?.cancel();

    // subscribe to orderbook stream
    _orderbookSubscr = _api.clientSecure
        .getOrderbookUpdates(OrderbookUpdatesRequest()..assetPairId = pairId)
        .map((event) {
      var orderbook = Orderbook();
      orderbook.assetPairId = event.assetPairId;
      orderbook.bids
          .addAll(_getMergedPriceVolumes(bids.value, event.bids, false));
      orderbook.asks
          .addAll(_getMergedPriceVolumes(asks.value, event.asks, true));
      return orderbook;
    }).listen((update) {
      if (update.bids.isNotEmpty) bids.assignAll(update.bids);
      if (update.asks.isNotEmpty) asks.assignAll(update.asks);
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
    double balance =
        double.tryParse(isBuy ? quotingBalance : baseBalance) ?? 0.0;
    double amountValue =
        isBuy ? (balance * percent) / priceValue : balance * percent;

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
      Get.rawSnackbar(
        message: 'Order failed',
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

  List<Orderbook_PriceVolume> _getMergedPriceVolumes(
    List<Orderbook_PriceVolume> oldPV,
    List<Orderbook_PriceVolume> newPV,
    bool ascending,
  ) {
    newPV.forEach((update) {
      if (update.v == '0') {
        oldPV.removeWhere((_) => _.p == update.p);
      } else {
        if (update.v.startsWith('-')) {
          update.v = update.v.replaceFirst('-', '');
        }
        int index = oldPV.indexWhere((_) => _.p == update.p);
        if (index < 0) {
          oldPV.add(update);
        } else {
          oldPV[index] = update;
        }
      }
    });
    if (ascending) {
      oldPV.sort((a, b) => a.p.compareTo(b.p));
    } else {
      oldPV.sort((b, a) => a.p.compareTo(b.p));
    }
    return oldPV;
  }

  _updateAllowed() {
    double balance =
        double.tryParse(isBuy ? quotingBalance : baseBalance) ?? 0.0;
    double amount = double.tryParse(amountTextController.text) ?? 0.0;
    locked = isBuy ? _countTotal() > balance : amount > balance;
    actionAllowed = !locked && amount > 0;
  }
}
