import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:flutter/material.dart';

class TradelogTile extends StatelessWidget {
  const TradelogTile({
    @required this.price,
    @required this.tradeSize,
    @required this.time,
    Key key,
  }) : super(key: key);

  final String price;
  final String tradeSize;
  final String time;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.button.copyWith(
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
                style: style.apply(color: AppColors.green),
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
}
