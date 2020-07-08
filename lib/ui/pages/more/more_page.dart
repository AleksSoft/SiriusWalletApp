import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/ui/pages/more/more_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/menu_tile.dart';

class MoreView extends StatelessWidget {
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
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              MenuTile(
                title: 'settings'.tr,
                icon: Icons.settings,
                // TODO: tbd
                // onTap: () => Get.toNamed(Routes.moreSettingsRoute),
                trailing: Icon(Icons.chevron_right),
              ),
              MenuTile(
                title: 'profile'.tr,
                icon: Icons.account_circle,
                // TODO: tbd
                // onTap: () => Get.toNamed(Routes.moreProfileRoute),
                trailing: Icon(Icons.chevron_right),
              ),
              MenuTile(
                title: 'support'.tr,
                icon: Icons.headset,
                // TODO: tbd
                // onTap: () => Get.toNamed(Routes.moreSupportRoute),
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
                onTap: () {},
                color: Colors.red,
                trailing: Icon(Icons.chevron_right),
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
