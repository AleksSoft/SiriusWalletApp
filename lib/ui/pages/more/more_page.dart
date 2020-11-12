import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/controllers/more_controller.dart';
import 'package:antares_wallet/ui/pages/errors_log/errors_log_page.dart';
import 'package:antares_wallet/ui/pages/more/profile/profile_page.dart';
import 'package:antares_wallet/ui/pages/more/settings/settings_page.dart';
import 'package:antares_wallet/ui/pages/more/support/support_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

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
                icon: Icons.settings,
                onTap: () => Get.toNamed(SettingsPage.route),
                trailing: Icon(Icons.chevron_right),
              ),
              MenuTile(
                title: 'profile'.tr,
                icon: Icons.account_circle,
                onTap: () => Get.toNamed(ProfilePage.route),
                trailing: Icon(Icons.chevron_right),
              ),
              MenuTile(
                title: 'support'.tr,
                icon: Icons.headset,
                onTap: () => Get.toNamed(SupportPage.route),
                trailing: Icon(Icons.chevron_right),
              ),
              MenuTile(
                title: 'tac'.tr,
                icon: Icons.list,
                onTap: () =>
                    _launchURL('https://www.lykke.com/cp/terms_of_use'),
                trailing: Icon(Icons.chevron_right),
              ),
              Container(
                height: AppSizes.small,
                color: CupertinoColors.extraLightBackgroundGray,
              ),
              MenuTile(
                title: 'logout'.tr,
                icon: Icons.exit_to_app,
                onTap: () => _.signOut(),
                color: Colors.red,
                trailing: Icon(Icons.chevron_right),
              ),
              MenuTile(
                title: 'Errors history',
                icon: Icons.format_list_numbered,
                onTap: () => Get.to(SavedErrorsPage(), fullscreenDialog: true),
              ),
              MenuTile(
                title: 'Share API Token',
                icon: Icons.share_sharp,
                onTap: () => _.shareToken(),
              ),
            ],
          );
        },
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false, forceSafariVC: false);
    } else {
      throw 'Could not launch $url';
    }
  }
}
