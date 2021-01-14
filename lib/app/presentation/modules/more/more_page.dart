import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/presentation/widgets/menu_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'more_controller.dart';

class MorePage extends GetView<MoreController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('more'.tr)),
      body: ListView(
        children: <Widget>[
          MenuTile(
            title: 'settings'.tr,
            icon: Icons.settings_outlined,
            onTap: controller.openSettings,
            trailing: Icon(Icons.chevron_right),
          ),
          MenuTile(
            title: 'profile'.tr,
            icon: Icons.account_circle_outlined,
            onTap: controller.openProfile,
            trailing: Icon(Icons.chevron_right),
          ),
          MenuTile(
            title: 'support'.tr,
            icon: Icons.headset_mic_outlined,
            onTap: controller.openSupport,
            trailing: Icon(Icons.chevron_right),
          ),
          MenuTile(
            title: 'tac'.tr,
            icon: Icons.list_alt_outlined,
            onTap: controller.launchTAC,
            trailing: Icon(Icons.chevron_right),
          ),
          Container(
            height: AppSizes.small,
            color: CupertinoColors.extraLightBackgroundGray,
          ),
          MenuTile(
            title: 'logout'.tr,
            icon: Icons.exit_to_app_outlined,
            onTap: controller.signOut,
            color: Colors.red,
            trailing: Icon(Icons.chevron_right),
          ),
          Visibility(
            visible: controller.isDevSettingsVisible,
            child: MenuTile(
              title: 'dev_settings'.tr,
              icon: Icons.settings_applications_outlined,
              onTap: controller.openDevSettings,
            ),
          ),
        ],
      ),
    );
  }
}
