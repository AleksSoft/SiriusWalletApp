import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/views/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAssetsView extends StatelessWidget {
  const HomeAssetsView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: 16.0,
            ),
            child: Row(
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Assets',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                GestureDetector(
                  onTap: () => print('hide pressed'),
                  child: Text(
                    'Hide',
                    style: Theme.of(context).textTheme.button.copyWith(
                          color: AppColors.accent,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'USD 0.00',
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          SizedBox(height: 8.0),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            leading: Container(
              width: 28,
              height: 28,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.accent,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8.0,
                    color: AppColors.accent.withOpacity(0.4),
                  ),
                ],
              ),
              child: Icon(
                Icons.account_balance_wallet,
                color: AppColors.primary,
                size: 16.0,
              ),
            ),
            title: Align(
              alignment: Alignment(-1.25, 0),
              child: Text('Portfolio'),
            ),
            trailing: Text(
              'USD 0.00',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Divider(height: 0.5),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            leading: Container(
              width: 28,
              height: 28,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.yellow[700],
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8.0,
                    color: Colors.yellow[900].withOpacity(0.4),
                  ),
                ],
              ),
              child: Icon(
                Icons.lock,
                color: AppColors.primary,
                size: 16.0,
              ),
            ),
            title: Align(
              alignment: Alignment(-1.25, 0),
              child: Text('Wallets'),
            ),
            trailing: Text(
              'USD 0.00',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Divider(height: 0.5),
          Container(
            height: 64.0,
            decoration: BoxDecoration(
              color: AppColors.accent,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(16.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RotatedBox(
                        quarterTurns: 3,
                        child: Icon(
                          Icons.exit_to_app,
                          size: 18.0,
                          color: AppColors.primary,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Deposit',
                        style: Theme.of(context).textTheme.button.copyWith(
                              color: AppColors.primary,
                            ),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  indent: 16.0,
                  endIndent: 16.0,
                  color: AppColors.primary.withOpacity(0.5),
                ),
                CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RotatedBox(
                        quarterTurns: 1,
                        child: Icon(
                          Icons.exit_to_app,
                          size: 18.0,
                          color: AppColors.primary,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Withdraw',
                        style: Theme.of(context).textTheme.button.copyWith(
                              color: AppColors.primary,
                            ),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  indent: 16.0,
                  endIndent: 16.0,
                  color: AppColors.primary.withOpacity(0.5),
                ),
                CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.headset_mic,
                        size: 18.0,
                        color: AppColors.primary,
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Support',
                        style: Theme.of(context).textTheme.button.copyWith(
                              color: AppColors.primary,
                            ),
                      ),
                    ],
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
