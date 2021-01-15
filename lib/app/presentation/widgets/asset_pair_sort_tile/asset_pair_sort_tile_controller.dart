import 'package:antares_wallet/app/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      return Icon(Icons.arrow_upward, size: 10, color: sortColor(index));
    } else if (_sortType == _sortTypes[index][1]) {
      return Icon(Icons.arrow_downward, size: 10, color: sortColor(index));
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

  Color sortColor(int index) => _sortTypes[index].contains(sortType)
      ? AppColors.accent
      : AppColors.secondary;
}