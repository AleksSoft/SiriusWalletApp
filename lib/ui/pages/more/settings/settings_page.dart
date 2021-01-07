import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/controllers/settings_controller.dart';
import 'package:antares_wallet/ui/pages/more/widgets/menu_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('settings'.tr),
      ),
      body: GetBuilder<SettingsController>(
          init: SettingsController(),
          builder: (_) {
            return AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: _.loading
                  ? Container(
                      alignment: Alignment.center,
                      color: AppColors.primary,
                      child: AppUiHelpers.circularProgress,
                    )
                  : ListView(
                      children: <Widget>[
                        MenuTile(
                          title: 'base_asset'.tr,
                          subtitle: _.baseAsset.name,
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
                            value: _.signOrders,
                            onChanged: _.toggleSignOrderWithPin,
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
                          onTap: () => Get.bottomSheet(_ChooseLanguageView()),
                        ),
                        MenuTile(
                          title: 'about'.tr,
                          icon: Icons.info_outline,
                          iconColor: Colors.black,
                          color: Colors.transparent,
                          showDivider: false,
                          onTap: () => _.showAbout(),
                        ),
                      ],
                    ),
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
