import 'dart:math';

import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';

class OrderbookUtils {
  static List<Orderbook_PriceVolume> getMergedPriceVolumes(
    List<Orderbook_PriceVolume> oldPV,
    List<Orderbook_PriceVolume> newPV,
    bool ascending,
  ) {
    newPV.forEach((update) {
      double doubleV = parsed(update.v);
      if (doubleV == 0.0) {
        oldPV.removeWhere((_) => _.p == update.p);
      } else {
        if (doubleV < 0.0) {
          doubleV *= -1.0;
          update.v = doubleV.toString();
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
      oldPV.sort((a, b) => parsed(a.p).compareTo(parsed(b.p)));
    } else {
      oldPV.sort((b, a) => parsed(a.p).compareTo(parsed(b.p)));
    }
    return oldPV;
  }

  static Orderbook getMergedOrderbook(
    Orderbook oldOrderbook,
    Orderbook newOrderbook,
  ) {
    var updatedBids = getMergedPriceVolumes(
      List<Orderbook_PriceVolume>.from(oldOrderbook.bids),
      newOrderbook.bids,
      false,
    );
    var updatedAsks = getMergedPriceVolumes(
      List<Orderbook_PriceVolume>.from(oldOrderbook.asks),
      newOrderbook.asks,
      true,
    );
    return Orderbook()
      ..assetPairId = newOrderbook.assetPairId
      ..bids.addAll(updatedBids)
      ..asks.addAll(updatedAsks);
  }

  static double parsed(String v) => double.tryParse(v) ?? 0.0;

  static double maxVol(List<Orderbook_PriceVolume> l) =>
      l.map((o) => double.tryParse(o.v) ?? 0.0).reduce(max);
}
