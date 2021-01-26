import 'package:antares_wallet/app/core/common/common.dart';
import 'package:antares_wallet/app/core/routes/app_pages.dart';
import 'package:antares_wallet/app/presentation/modules/profile/profile_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'upgrade/widgets/upgrade_request_view.dart';

class ProfilePage extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('profile'.tr)),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(AppSizes.medium),
          children: <Widget>[
            Obx(
              () => Visibility(
                visible: controller.tierInfo.value.upgradeRequest.hasTier(),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: AppSizes.medium),
                  child: UpgradeRequestView(
                    controller.tierInfo.value.upgradeRequest,
                  ),
                ),
              ),
            ),
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

class _AccountDataView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'Account level',
          style: Get.textTheme.headline6,
        ),
        ListTile(
          contentPadding: const EdgeInsets.all(0.0),
          leading: Icon(
            Icons.check_circle_outline_outlined,
            color: AppColors.accent,
            size: 40.0,
          ),
          title: Obx(() => Text(controller.tierInfo.value.currentTier.tier)),
          subtitle: Text('verified'.tr),
          trailing: Obx(
            () => Visibility(
              visible: !controller.tierInfo.value.nextTier.tier.isBlank,
              child: OutlineButton(
                onPressed: () => Get.toNamed(Routes.UPGRADE_ACC_MAIN),
                borderSide: BorderSide(color: AppColors.accent),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.extraSmall),
                ),
                textColor: AppColors.accent,
                child: Text('upgrade'.tr),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _DepositLimitsView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: controller.doubleMax > 1
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Deposit limits',
                    style: Get.textTheme.headline6,
                  ),
                  AppUiHelpers.vSpaceSmall,
                  Text(
                    'Last 30d',
                    style: Get.textTheme.caption,
                  ),
                  AppUiHelpers.vSpaceExtraSmall,
                  LinearPercentIndicator(
                    lineHeight: AppSizes.extraSmall,
                    padding: const EdgeInsets.all(0.0),
                    percent: controller.limitPercent,
                    backgroundColor: AppColors.secondary.withOpacity(0.1),
                    progressColor: AppColors.accent,
                  ),
                  AppUiHelpers.vSpaceExtraSmall,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Obx(
                        () => Text(
                          controller.currentTierCurrent,
                          style: Get.textTheme.caption,
                        ),
                      ),
                      Obx(
                        () => Text(
                          controller.currentTierMax,
                          style: Get.textTheme.caption,
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

class _PersonalDataView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'Personal data',
          style: Get.textTheme.headline6,
        ),
        ListTile(
          contentPadding: const EdgeInsets.all(0.0),
          title: Text('full_name'.tr),
          subtitle: Obx(() => Text(controller.personalData.value.fullName)),
        ),
        Divider(height: 1.0),
        ListTile(
          contentPadding: const EdgeInsets.all(0.0),
          title: Text('email'.tr),
          subtitle: Obx(() => Text(controller.personalData.value.email)),
        ),
        Divider(height: 1.0),
        ListTile(
          contentPadding: const EdgeInsets.all(0.0),
          title: Text('contact_phone'.tr),
          subtitle: Obx(() => Text(controller.personalData.value.phone)),
        ),
        Divider(height: 1.0),
        ListTile(
          contentPadding: const EdgeInsets.all(0.0),
          title: Text('country'.tr),
          subtitle: Obx(() => Text(controller.personalData.value.country)),
        ),
        Divider(height: 1.0),
      ],
    );
  }
}
