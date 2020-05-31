import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/views/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeExchangeView extends StatelessWidget {
  const HomeExchangeView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Exchange',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                GestureDetector(
                  onTap: () => print('hide pressed'),
                  child: Text(
                    'More',
                    style: Theme.of(context).textTheme.button.copyWith(
                          color: AppColors.accent,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                )
              ],
            ),
            SizedBox(height: 16.0),
            SizedBox(
              height: 80.0,
              child: Row(
                children: [
                  _buildPairContainer(context),
                  SizedBox(width: 8.0),
                  _buildPairContainer(context),
                ],
              ),
            ),
            SizedBox(height: 8.0),
            SizedBox(
              height: 80.0,
              child: Row(
                children: [
                  _buildPairContainer(context),
                  SizedBox(width: 8.0),
                  _buildPairContainer(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPairContainer(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.button;
    return Flexible(
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          border: Border.all(color: AppColors.secondary.withOpacity(0.2)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textBaseline: TextBaseline.ideographic,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'LYCI',
                    style: textStyle.copyWith(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: ' / USD \n',
                        style: textStyle.copyWith(
                          fontSize: 10.0,
                        ),
                      ),
                      TextSpan(
                        text: 'LyCI Service Token',
                        style: textStyle.copyWith(
                          fontSize: 12.0,
                          color: AppColors.secondary,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/logo_lykke.png',
                  height: 20.0,
                  width: 20.0,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '258,18',
                  style: textStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.0,
                  ),
                ),
                Text(
                  '+2,20%',
                  style: textStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0,
                    color: AppColors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
