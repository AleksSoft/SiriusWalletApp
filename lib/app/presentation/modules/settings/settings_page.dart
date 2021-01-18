import 'package:antares_wallet/app/presentation/widgets/empty_reloading_view.dart';
import 'package:antares_wallet/app/presentation/widgets/menu_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'settings_controller.dart';

class SettingsPage extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('settings'.tr)),
      body: AnimatedSwitcher(
        duration: Get.defaultTransitionDuration,
        child: Obx(
          () => EmptyReloadingView(
            isLoading: controller.loading.value,
            child: ListView(
              children: <Widget>[
                MenuTile(
                  title: 'base_asset'.tr,
                  subtitle: controller.baseAsset.name,
                  icon: Icons.looks_one,
                  iconColor: Colors.black,
                  color: Colors.transparent,
                  showDivider: false,
                  onTap: controller.updateBaseAsset,
                ),
                MenuTile(
                  title: 'push_notifications'.tr,
                  icon: Icons.notifications,
                  iconColor: Colors.black,
                  color: Colors.transparent,
                  showDivider: false,
                  trailing: Switch(
                    value: controller.isPushEnabled.value,
                    onChanged: controller.togglePushEnabled,
                  ),
                ),
                MenuTile(
                  title: 'pin'.tr,
                  subtitle: 'sign_order_with_pin'.tr,
                  icon: Icons.dialpad,
                  iconColor: Colors.black,
                  color: Colors.transparent,
                  showDivider: false,
                  trailing: Switch(
                    value: controller.signOrders.value,
                    onChanged: (value) => controller.signOrders(value),
                  ),
                ),
                // MenuTile(
                //   title: 'language'.tr,
                //   subtitle: Get.locale.languageCode,
                //   icon: Icons.language,
                //   iconColor: Colors.black,
                //   color: Colors.transparent,
                //   showDivider: false,
                //   onTap: controller.selectLanguage,
                // ),
                MenuTile(
                  title: 'about'.tr,
                  icon: Icons.info_outline,
                  iconColor: Colors.black,
                  color: Colors.transparent,
                  showDivider: false,
                  onTap: () => controller.showAbout(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
