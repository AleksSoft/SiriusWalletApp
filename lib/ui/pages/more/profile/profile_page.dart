import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/upgrade_account_main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:get/get.dart';

import 'profile_controller.dart';

class ProfilePage extends StatelessWidget {
  static final String route = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Text('profile'.tr),
      ),
      body: GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (_) {
          return ListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            padding: const EdgeInsets.all(AppSizes.medium),
            children: <Widget>[
              _AccountDataView(),
              AppUiHelpers.vSpaceSmall,
              _DepositLimitsView(),
              AppUiHelpers.vSpaceSmall,
              _PersonalDataView(),
            ],
          );
        },
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
          title: Text(c.accountData.levelStr),
          subtitle: Text('verified'.tr),
          trailing: Visibility(
            visible: c.accountData.hasNoLimit,
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
  final account = ProfileController.con.accountData;
  @override
  Widget build(BuildContext context) {
    if (account.hasNoLimit) return SizedBox.shrink();
    return Column(
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
          percent: account.depositPercent,
          backgroundColor: AppColors.secondary.withOpacity(0.1),
          progressColor: AppColors.accent,
        ),
        AppUiHelpers.vSpaceExtraSmall,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '${account.currentDeposit} ${account.currency}',
              style: Theme.of(context).textTheme.caption,
            ),
            Text(
              '${account.depositLimit} ${account.currency}',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
        AppUiHelpers.vSpaceSmall,
      ],
    );
  }
}

class _PersonalDataView extends StatelessWidget {
  final data = ProfileController.con.personalData;
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
          subtitle: Text(data.fullName),
        ),
        Divider(height: 1.0),
        ListTile(
          contentPadding: const EdgeInsets.all(0.0),
          title: Text('email'.tr),
          subtitle: Text(data.email),
        ),
        Divider(height: 1.0),
        ListTile(
          contentPadding: const EdgeInsets.all(0.0),
          title: Text('contact_phone'.tr),
          subtitle: Text(data.contactPhone),
        ),
        Divider(height: 1.0),
        ListTile(
          contentPadding: const EdgeInsets.all(0.0),
          title: Text('country'.tr),
          subtitle: Text(data.country),
        ),
        Divider(height: 1.0),
      ],
    );
  }
}
