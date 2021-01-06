import 'package:antares_wallet/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class VolumeBidTile extends StatelessWidget {
  const VolumeBidTile({
    @required this.volume,
    @required this.bid,
    @required this.percent,
    Key key,
  }) : super(key: key);

  final String volume;
  final String bid;
  final double percent;

  @override
  Widget build(BuildContext context) {
    final style = Get.textTheme.button.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 12.0,
    );
    return Container(
      height: AppSizes.extraLarge,
      alignment: Alignment.center,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          LinearPercentIndicator(
            isRTL: true,
            lineHeight: AppSizes.extraLarge - 2,
            padding: const EdgeInsets.all(0.0),
            linearStrokeCap: LinearStrokeCap.butt,
            percent: percent ?? 0,
            backgroundColor: Colors.transparent,
            progressColor: AppColors.green.withOpacity(0.1),
          ),
          Padding(
            padding: const EdgeInsets.only(right: AppSizes.extraSmall),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  volume ?? '—',
                  style: style,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  bid ?? '—',
                  style: style.apply(color: AppColors.green),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
