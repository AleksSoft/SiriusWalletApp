import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: false,
        title: Text('app_title'.tr()),
        elevation: 0.5,
      ),
      body: ListView(
        children: [
          _AssetsView(),
          _ExchangeView(),
          _LyCIView(),
          _MyLykkeView(),
          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 16.0),
            child: Text(
              '© 2020 Lykke, Inc.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.button.copyWith(
                    color: AppColors.secondary,
                  ),
            ),
          )
        ],
      ),
    );
  }
}

class _AssetsView extends StatelessWidget {
  const _AssetsView({
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
            title: Text('portfolio'.tr()),
            trailing: Text(
              'USD 0.00',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Divider(height: 0.5, indent: 16.0, endIndent: 16.0),
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
            title: Text('wallets'.tr()),
            trailing: Text(
              'USD 0.00',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
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

class _ExchangeView extends StatelessWidget {
  const _ExchangeView({
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
                  'assets/images/logo_lykke.png',
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

class _LyCIView extends StatelessWidget {
  const _LyCIView({
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
          _buildHeader(context),
          _buildListTile(context),
          Divider(
            height: 1.0,
            indent: 16.0,
            endIndent: 16.0,
          ),
          _buildListTile(context),
          Divider(
            height: 1.0,
            indent: 16.0,
            endIndent: 16.0,
          ),
          _buildListTile(context),
          Divider(
            height: 1.0,
            indent: 16.0,
            endIndent: 16.0,
          ),
          CupertinoButton(
            onPressed: () {},
            child: Text('learn_more'.tr()),
          ),
        ],
      ),
    );
  }

  ListTile _buildListTile(BuildContext context) {
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/logo_lykke.png',
                height: 16.0,
                width: 16.0,
              ),
              SizedBox(width: 4.0),
              Text(
                'LyCI Service Token',
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                      fontSize: 14.0,
                    ),
              ),
            ],
          ),
          SizedBox(height: 4.0),
          Text(
            'LYCI 0,00',
            style: Theme.of(context).textTheme.subtitle2.copyWith(
                  fontSize: 14.0,
                ),
          )
        ],
      ),
      subtitle: Text('USD 0,00'),
      trailing: SizedBox(
        height: 32.0,
        child: CupertinoButton.filled(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          borderRadius: const BorderRadius.all(Radius.circular(24.0)),
          child: Text(
            'Buy now',
            style: Theme.of(context).textTheme.button.copyWith(
                  fontSize: 16.0,
                  color: AppColors.primary,
                ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: AppColors.accent.withOpacity(0.8),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.0),
        ),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'LyCI',
            style: Theme.of(context).textTheme.headline3.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                  letterSpacing: 8.0,
                ),
          ),
          Container(
            height: 0.5,
            width: 120,
            color: AppColors.primary,
            margin: EdgeInsets.all(16.0),
          ),
          Text(
            'WHAT MATTERS TO YOU',
            style: Theme.of(context).textTheme.subtitle2.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.primary,
                  letterSpacing: 2.0,
                ),
          ),
        ],
      ),
    );
  }
}

class _MyLykkeView extends StatelessWidget {
  const _MyLykkeView({
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
            Text(
              'My lykke',
              style: Theme.of(context).textTheme.headline6.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(height: 8.0),
            Divider(height: 1.0),
            _buildListTile(context),
            Divider(height: 1.0),
            _buildListTile(context),
            Divider(height: 1.0),
            _buildListTile(context),
            Divider(height: 1.0),
            SizedBox(height: 16.0),
            CupertinoButton.filled(
              padding: EdgeInsets.all(0.0),
              child: Text('buy_now'.tr()),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  ListTile _buildListTile(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.all(0.0),
      title: Text(
        'LKK',
        style: Theme.of(context).textTheme.subtitle1.copyWith(
              fontWeight: FontWeight.w600,
            ),
      ),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/logo_lykke.png',
            height: 15.0,
            width: 15.0,
          ),
          SizedBox(width: 4.0),
          Text(
            'LyCI Service Token',
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'LKK 0,00',
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 4.0),
          Text(
            'USD 0,00',
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}
