import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../profile_controller.dart';

class UpgradeAccountChooseDocPage extends StatelessWidget {
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
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () => Get.toNamed(
              Routes.UPGRADE_ACC_DOC,
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
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () => Get.toNamed(
              Routes.UPGRADE_ACC_DOC,
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
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () => Get.toNamed(
              Routes.UPGRADE_ACC_DOC,
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
