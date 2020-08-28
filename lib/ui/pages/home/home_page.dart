import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/ui/widgets/default_card.dart';
import 'package:antares_wallet/utils/formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  static final String route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: false,
        title: Text('app_title'.tr),
      ),
      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {
          return ListView(
            children: [
              _AssetsView(),
              _ExchangeView(),
              _MyLykkeView(),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  AppSizes.medium,
                  AppSizes.small,
                  AppSizes.medium,
                  AppSizes.medium,
                ),
                child: Text(
                  '© 2020 Lykke, Inc.',
                  textAlign: TextAlign.center,
                  style: Get.textTheme.button.copyWith(
                    color: AppColors.secondary,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class _AssetsView extends StatelessWidget {
  _AssetsView({Key key}) : super(key: key);
  final assetsCon = PortfolioController.con;
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
              left: AppSizes.medium,
              right: AppSizes.medium,
              top: AppSizes.medium,
            ),
            child: Row(
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Assets',
                  style: Get.textTheme.headline6.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Hide',
                    style: Get.textTheme.button.copyWith(
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
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.medium),
            child: Obx(
              () => Text(
                Formatter.currency(
                  assetsCon.balanceSum.toString(),
                  symbol: AssetsController.con.baseAsset?.displayId,
                  maxDecimal: 2,
                ),
                style: Get.textTheme.caption,
              ),
            ),
          ),
          AppUiHelpers.vSpaceSmall,
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: AppSizes.medium,
            ),
            leading: Container(
              width: 28,
              height: 28,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.accent,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: AppSizes.small,
                    color: AppColors.accent.withOpacity(0.4),
                  ),
                ],
              ),
              child: Icon(
                Icons.account_balance_wallet,
                color: AppColors.primary,
                size: AppSizes.medium,
              ),
            ),
            title: Text('portfolio'.tr),
            trailing: Obx(
              () => Text(
                Formatter.currency(
                  assetsCon.balanceSum.toString(),
                  symbol: AssetsController.con.baseAsset?.displayId,
                  maxDecimal: 2,
                ),
                style: TextStyle(
                  fontSize: AppSizes.medium,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Divider(
            height: 0.5,
            indent: AppSizes.medium,
            endIndent: AppSizes.medium,
          ),
          Container(
            height: 64.0,
            decoration: BoxDecoration(
              color: AppColors.accent,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(AppSizes.medium),
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
                      AppUiHelpers.vSpaceExtraSmall,
                      Text(
                        'Deposit',
                        style: Get.textTheme.button.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  indent: AppSizes.medium,
                  endIndent: AppSizes.medium,
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
                      AppUiHelpers.vSpaceExtraSmall,
                      Text(
                        'Withdraw',
                        style: Get.textTheme.button.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  indent: AppSizes.medium,
                  endIndent: AppSizes.medium,
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
                      AppUiHelpers.vSpaceExtraSmall,
                      Text(
                        'Support',
                        style: Get.textTheme.button.copyWith(
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
  const _ExchangeView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.medium),
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
                  style: Get.textTheme.headline6.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'More',
                    style: Get.textTheme.button.copyWith(
                      color: AppColors.accent,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
            AppUiHelpers.vSpaceLarge,
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 2 / 1,
              mainAxisSpacing: AppSizes.small,
              crossAxisSpacing: AppSizes.small,
              children: <double>[0.25, 0.5, 0.75, 1.0]
                  .map((e) => _buildPairContainer())
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPairContainer() {
    final textStyle = Get.textTheme.button;
    return Container(
      height: AppSizes.extraLarge * 2,
      padding: EdgeInsets.all(AppSizes.small),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.small)),
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
                'assets/images/ic_launcher.png',
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
    );
  }
}

class _MyLykkeView extends StatelessWidget {
  const _MyLykkeView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.medium),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'My lykke',
              style: Get.textTheme.headline6.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            AppUiHelpers.vSpaceLarge,
            Divider(height: 1.0),
            ListView.separated(
              shrinkWrap: true,
              itemCount: 3,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) => _buildListTile(),
              separatorBuilder: (_, index) => Divider(height: 1.0),
            ),
            AppUiHelpers.vSpaceLarge,
            CupertinoButton.filled(
              padding: EdgeInsets.all(0.0),
              child: Text('buy_now'.tr),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  ListTile _buildListTile() {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.all(0.0),
      title: Text(
        'LKK',
        style: Get.textTheme.subtitle1.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/ic_launcher.png',
            height: AppSizes.medium,
            width: AppSizes.medium,
          ),
          AppUiHelpers.hSpaceExtraSmall,
          Text(
            'LyCI Service Token',
            style: Get.textTheme.caption,
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'LKK 0,00',
            style: Get.textTheme.subtitle1.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          AppUiHelpers.vSpaceExtraSmall,
          Text(
            'USD 0,00',
            style: Get.textTheme.caption,
          )
        ],
      ),
    );
  }
}
