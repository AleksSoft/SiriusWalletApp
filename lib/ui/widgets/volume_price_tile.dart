import 'package:antares_wallet/app/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class VolumePriceTile extends StatelessWidget {
  const VolumePriceTile({
    this.volume,
    this.price,
    this.percent = 0,
    this.color = AppColors.secondary,
    this.onVolumePressed,
    this.onPricePressed,
    Key key,
  }) : super(key: key);

  final String volume;
  final String price;
  final double percent;
  final Color color;
  final VoidCallback onVolumePressed;
  final VoidCallback onPricePressed;

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
            percent: percent,
            backgroundColor: Colors.transparent,
            progressColor: color.withOpacity(0.1),
          ),
          Padding(
            padding: const EdgeInsets.only(left: AppSizes.extraSmall),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => onPricePressed?.call(),
                  child: Text(
                    price ?? '—',
                    style: style.apply(color: color),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                GestureDetector(
                  onTap: () => onVolumePressed?.call(),
                  child: Text(
                    volume ?? '—',
                    style: style,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
