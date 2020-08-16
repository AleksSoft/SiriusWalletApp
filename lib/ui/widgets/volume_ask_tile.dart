import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class VolumeAskTile extends StatelessWidget {
  const VolumeAskTile({
    this.volume,
    this.ask,
    this.percent = 0,
    Key key,
  }) : super(key: key);

  final String volume;
  final String ask;
  final double percent;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.button.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 11.0,
        );
    return Container(
      height: AppSizes.extraLarge,
      alignment: Alignment.center,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          LinearPercentIndicator(
            lineHeight: AppSizes.extraLarge - 2,
            padding: const EdgeInsets.all(0.0),
            linearStrokeCap: LinearStrokeCap.butt,
            percent: percent,
            backgroundColor: Colors.transparent,
            progressColor: AppColors.red.withOpacity(0.1),
          ),
          Padding(
            padding: const EdgeInsets.only(left: AppSizes.extraSmall),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ask ?? '—',
                  style: style.apply(color: AppColors.red),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  volume ?? '—',
                  style: style,
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
