import 'package:antares_wallet/ui/pages/more/settings/settings_controller.dart';
import 'package:antares_wallet/ui/pages/more/widgets/menu_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  static final String route = '/settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('settings'.tr),
      ),
      body: GetBuilder<SettingsController>(
          init: SettingsController(),
          builder: (_) {
            return ListView(
              children: <Widget>[
                MenuTile(
                  title: 'base_asset'.tr,
                  subtitle: _.settings.baseAsset?.symbol ?? '',
                  icon: Icons.looks_one,
                  iconColor: Colors.black,
                  color: Colors.transparent,
                  showDivider: false,
                  onTap: () => _.updateBaseAsset(),
                ),
                MenuTile(
                  title: 'push_notifications'.tr,
                  icon: Icons.notifications,
                  iconColor: Colors.black,
                  color: Colors.transparent,
                  showDivider: false,
                  trailing: Switch(
                    value: false,
                    onChanged: (bool value) {},
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
                    value: true,
                    onChanged: (bool value) {},
                  ),
                ),
                MenuTile(
                  title: 'backup_private_key'.tr,
                  icon: Icons.vpn_key,
                  iconColor: Colors.black,
                  color: Colors.transparent,
                  showDivider: false,
                  onTap: () => _.backupPrivateKey(),
                ),
                MenuTile(
                  title: 'language'.tr,
                  subtitle: Get.locale.languageCode,
                  icon: Icons.language,
                  iconColor: Colors.black,
                  color: Colors.transparent,
                  showDivider: false,
                  onTap: () => showModalBottomSheet(
                    context: context,
                    builder: (context) => _ChooseLanguageView(),
                  ),
                ),
                MenuTile(
                  title: 'about'.tr,
                  icon: Icons.info_outline,
                  iconColor: Colors.black,
                  color: Colors.transparent,
                  showDivider: false,
                  onTap: () => showAboutDialog(context: context),
                ),
              ],
            );
          }),
    );
  }
}

class _ChooseLanguageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Get.back(),
        ),
        title: Text('choose_language'.tr),
        centerTitle: true,
      ),
      body: Column(
        children: Get.translations.keys.map((e) => _buildListTile(e)).toList(),
      ),
    );
  }

  ListTile _buildListTile(String langCode) {
    return ListTile(
      title: Text(langCode.tr),
      onTap: () {
        if (Get.locale != Locale(langCode)) {
          Get.updateLocale(Locale(langCode));
        }
      },
    );
  }
}
