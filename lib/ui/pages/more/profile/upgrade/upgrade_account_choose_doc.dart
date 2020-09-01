import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/upgrade_account_doc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../profile_controller.dart';

class UpgradeAccountChooseDocPage extends StatelessWidget {
  static final String route = '/upgrade-account-choose-doc';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
            'upgrade_to'.trArgs(
              ['${ProfileController.con.tierInfo.nextTier.tier}'],
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSizes.large),
            child: Text(
              'msg_select_type_doc'.tr,
              style: Get.textTheme.button.copyWith(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
          ),
          Divider(height: 1.0),
          ListTile(
            title: Text('passport'.tr),
            trailing: Icon(CupertinoIcons.forward),
            onTap: () => Get.toNamed(
              UpgradeAccountDocPage.route,
              arguments: DocType.passport,
            ),
          ),
          Divider(
            height: 1.0,
            indent: AppSizes.medium,
            endIndent: AppSizes.medium,
          ),
          ListTile(
            title: Text('national_id'.tr),
            trailing: Icon(CupertinoIcons.forward),
            onTap: () => Get.toNamed(
              UpgradeAccountDocPage.route,
              arguments: DocType.nationalId,
            ),
          ),
          Divider(
            height: 1.0,
            indent: AppSizes.medium,
            endIndent: AppSizes.medium,
          ),
          ListTile(
            title: Text('driving_license'.tr),
            trailing: Icon(CupertinoIcons.forward),
            onTap: () => Get.toNamed(
              UpgradeAccountDocPage.route,
              arguments: DocType.drivingLicense,
            ),
          ),
          Divider(
            height: 1.0,
            indent: AppSizes.medium,
            endIndent: AppSizes.medium,
          ),
        ],
      ),
    );
  }
}
