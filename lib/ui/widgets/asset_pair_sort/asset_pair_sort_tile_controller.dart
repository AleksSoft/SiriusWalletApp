import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum PairSortType {
  name_top,
  name_bottom,
  vol_top,
  vol_bottom,
  price_top,
  price_bottom,
  change_top,
  change_bottom,
  none,
}

class AssetPairSortTileController extends GetxController {
  static AssetPairSortTileController get con => Get.find();

  static List<List<PairSortType>> _sortTypes = [
    [PairSortType.name_top, PairSortType.name_bottom],
    [PairSortType.vol_top, PairSortType.vol_bottom],
    [PairSortType.price_top, PairSortType.price_bottom],
    [PairSortType.change_top, PairSortType.change_bottom],
  ];

  AssetPairSortTileController(this.onChanged);
  final ValueChanged<PairSortType> onChanged;

  PairSortType _sortType = PairSortType.none;
  PairSortType get sortType => _sortType;
  set sortType(PairSortType value) {
    if (_sortType != value) {
      _sortType = value;
      onChanged?.call(_sortType);
      update();
    }
  }

  Widget getSortIcon(int index) {
    if (_sortType == _sortTypes[index][0]) {
      return Icon(Icons.arrow_upward, size: 10, color: AppColors.secondary);
    } else if (_sortType == _sortTypes[index][1]) {
      return Icon(Icons.arrow_downward, size: 10, color: AppColors.secondary);
    } else {
      return SizedBox.shrink();
    }
  }

  void updateSort(int index) {
    if (onChanged == null) return null;
    if (_sortType == _sortTypes[index][0]) {
      sortType = _sortTypes[index][1];
    } else if (_sortType == _sortTypes[index][1]) {
      sortType = PairSortType.none;
    } else {
      sortType = _sortTypes[index][0];
    }
  }
}
