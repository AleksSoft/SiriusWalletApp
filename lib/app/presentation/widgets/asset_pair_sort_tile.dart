import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/controllers/asset_pair_sort_tile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AssetPairSortTile extends StatelessWidget {
  AssetPairSortTile({
    this.onChanged,
    Key key,
  }) : super(key: key);
  final ValueChanged<PairSortType> onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Divider(
          color: AppColors.secondary.withOpacity(0.4),
          height: 1,
          indent: AppSizes.medium,
          endIndent: AppSizes.medium,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.medium),
          child: SizedBox(
            height: 40.0,
            child: GetBuilder<AssetPairSortTileController>(
              init: AssetPairSortTileController(this.onChanged),
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        _TextButton(index: 0, label: 'Name'),
                        Text(
                          ' / ',
                          style: Get.textTheme.button.copyWith(
                            color: AppColors.secondary,
                            fontSize: 12.0,
                          ),
                        ),
                        _TextButton(index: 1, label: 'Vol'),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: _TextButton(index: 2, label: 'Last price'),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: _TextButton(index: 3, label: '24h Chg %'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Divider(
          color: AppColors.secondary.withOpacity(0.4),
          height: 1,
          indent: AppSizes.medium,
          endIndent: AppSizes.medium,
        ),
      ],
    );
  }
}

class _TextButton extends StatelessWidget {
  _TextButton({
    @required this.index,
    @required this.label,
    Key key,
  }) : super(key: key);
  final int index;
  final String label;
  final c = AssetPairSortTileController.con;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => c.updateSort(index),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        textBaseline: TextBaseline.alphabetic,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          Text(
            label,
            style: Get.textTheme.button.copyWith(
              color: c.sortColor(index),
              fontSize: 12.0,
            ),
          ),
          c.getSortIcon(index),
        ],
      ),
    );
  }
}
