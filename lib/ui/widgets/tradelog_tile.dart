import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TradelogTile extends StatelessWidget {
  static const String defaultAction = 'buy';
  const TradelogTile({
    this.price,
    this.tradeSize,
    this.time,
    this.action = defaultAction,
    Key key,
  }) : super(key: key);

  final String price;
  final String tradeSize;
  final String time;
  final String action;

  @override
  Widget build(BuildContext context) {
    final style = Get.textTheme.button.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 12.0,
    );
    return Container(
      height: AppSizes.extraLarge,
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Text(
                price ?? '—',
                style: style.apply(color: _color(action)),
              )),
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Text(
              tradeSize ?? '—',
              style: style,
              textAlign: TextAlign.right,
            ),
          ),
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: Text(time ?? '—', style: style, textAlign: TextAlign.right),
          ),
        ],
      ),
    );
  }

  Color _color(String action) {
    if (action.toLowerCase() == defaultAction) {
      return AppColors.green;
    } else {
      return AppColors.red;
    }
  }
}
