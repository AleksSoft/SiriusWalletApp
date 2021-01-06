import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/controllers/more_controller.dart';
import 'package:antares_wallet/ui/pages/dev_settings/dev_settings_page.dart';
import 'package:antares_wallet/ui/pages/more/profile/profile_page.dart';
import 'package:antares_wallet/ui/pages/more/settings/settings_page.dart';
import 'package:antares_wallet/ui/pages/more/support/support_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/menu_tile.dart';

class MorePage extends StatelessWidget {
  static final String route = '/more';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('more'.tr),
      ),
      body: GetBuilder<MoreController>(
        init: MoreController(),
        builder: (_) {
          return ListView(
            children: <Widget>[
              MenuTile(
                title: 'settings'.tr,
                icon: Icons.settings_outlined,
                onTap: () => Get.toNamed(SettingsPage.route),
                trailing: Icon(Icons.chevron_right),
              ),
              MenuTile(
                title: 'profile'.tr,
                icon: Icons.account_circle_outlined,
                onTap: () => Get.toNamed(ProfilePage.route),
                trailing: Icon(Icons.chevron_right),
              ),
              MenuTile(
                title: 'support'.tr,
                icon: Icons.headset_mic_outlined,
                onTap: () => Get.toNamed(SupportPage.route),
                trailing: Icon(Icons.chevron_right),
              ),
              MenuTile(
                title: 'tac'.tr,
                icon: Icons.list_alt_outlined,
                onTap: () => _.launchTAC(),
                trailing: Icon(Icons.chevron_right),
              ),
              Container(
                height: AppSizes.small,
                color: CupertinoColors.extraLightBackgroundGray,
              ),
              MenuTile(
                title: 'logout'.tr,
                icon: Icons.exit_to_app_outlined,
                onTap: () => _.signOut(),
                color: Colors.red,
                trailing: Icon(Icons.chevron_right),
              ),
              Visibility(
                visible: !Get.find<AppConfig>().isProd,
                child: MenuTile(
                  title: 'Developer settings',
                  icon: Icons.settings_applications_outlined,
                  onTap: () => Get.to(DevSettingsPage()),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
