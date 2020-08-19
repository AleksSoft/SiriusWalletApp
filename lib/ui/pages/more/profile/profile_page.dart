import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/upgrade_account_main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'profile_controller.dart';

class ProfilePage extends StatelessWidget {
  static final String route = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0.5, title: Text('profile'.tr)),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(AppSizes.medium),
          children: <Widget>[
            _AccountDataView(),
            _DepositLimitsView(),
            AppUiHelpers.vSpaceMedium,
            _PersonalDataView(),
          ],
        ),
      ),
    );
  }
}

class _AccountDataView extends StatelessWidget {
  final c = ProfileController.con;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'Account level',
          style: Theme.of(context).textTheme.headline6,
        ),
        ListTile(
          contentPadding: const EdgeInsets.all(0.0),
          leading: Icon(
            CupertinoIcons.check_mark_circled,
            color: AppColors.accent,
            size: 40.0,
          ),
          title: Obx(() => Text(c.tierInfo.currentTier.tier)),
          subtitle: Text('verified'.tr),
          trailing: Visibility(
            visible: c.tierInfo.nextTier != null,
            child: OutlineButton(
              onPressed: () => Get.toNamed(UpgradeAccountMainPage.route),
              borderSide: BorderSide(color: AppColors.accent),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.extraSmall),
              ),
              textColor: AppColors.accent,
              child: Text('upgrade'.tr),
            ),
          ),
        ),
      ],
    );
  }
}

class _DepositLimitsView extends StatelessWidget {
  final c = ProfileController.con;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: c.doubleMax > 1
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Deposit limits',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  AppUiHelpers.vSpaceSmall,
                  Text(
                    'Last 30d',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  AppUiHelpers.vSpaceExtraSmall,
                  LinearPercentIndicator(
                    lineHeight: AppSizes.extraSmall,
                    padding: const EdgeInsets.all(0.0),
                    percent: c.limitPercent,
                    backgroundColor: AppColors.secondary.withOpacity(0.1),
                    progressColor: AppColors.accent,
                  ),
                  AppUiHelpers.vSpaceExtraSmall,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Obx(
                        () => Text(
                          '${c.tierInfo.currentTier.current} ${c.tierInfo.currentTier.asset}',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                      Obx(
                        () => Text(
                          '${c.tierInfo.currentTier.maxLimit} ${c.tierInfo.currentTier.asset}',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : SizedBox.shrink(),
      ),
    );
  }
}

class _PersonalDataView extends StatelessWidget {
  final c = ProfileController.con;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'Personal data',
          style: Theme.of(context).textTheme.headline6,
        ),
        ListTile(
          contentPadding: const EdgeInsets.all(0.0),
          title: Text('full_name'.tr),
          subtitle: Obx(() => Text(c.personalData.fullName)),
        ),
        Divider(height: 1.0),
        ListTile(
          contentPadding: const EdgeInsets.all(0.0),
          title: Text('email'.tr),
          subtitle: Obx(() => Text(c.personalData.email)),
        ),
        Divider(height: 1.0),
        ListTile(
          contentPadding: const EdgeInsets.all(0.0),
          title: Text('contact_phone'.tr),
          subtitle: Obx(() => Text(c.personalData.phone)),
        ),
        Divider(height: 1.0),
        ListTile(
          contentPadding: const EdgeInsets.all(0.0),
          title: Text('country'.tr),
          subtitle: Obx(() => Text(c.personalData.country)),
        ),
        Divider(height: 1.0),
      ],
    );
  }
}
