import 'package:antares_wallet/app/routers/more_nested_router.gr.dart';
import 'package:antares_wallet/services/key_store_service.dart';
import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/ui/common/app_sizes.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:easy_localization/easy_localization.dart';

import 'menu_tile.dart';

class MoreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('more'.tr),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          MenuTile(
            title: 'settings'.tr,
            icon: Icons.settings,
            onTap: () => ExtendedNavigator.ofRouter<MoreNestedRouter>()
                .pushNamed(Routes.moreSettingsRoute),
            trailing: Icon(Icons.chevron_right),
          ),
          MenuTile(
            title: 'profile'.tr,
            icon: Icons.account_circle,
            onTap: () => ExtendedNavigator.ofRouter<MoreNestedRouter>()
                .pushNamed(Routes.moreProfileRoute),
            trailing: Icon(Icons.chevron_right),
          ),
          MenuTile(
            title: 'support'.tr,
            icon: Icons.headset,
            onTap: () => ExtendedNavigator.ofRouter<MoreNestedRouter>()
                .pushNamed(Routes.moreSupportRoute),
            trailing: Icon(Icons.chevron_right),
          ),
          MenuTile(
            title: 'tac'.tr,
            icon: Icons.list,
            onTap: () => _launchURL('https://www.lykke.com/cp/terms_of_use'),
            trailing: Icon(Icons.chevron_right),
          ),
          Container(
            height: AppSizes.small,
            color: CupertinoColors.extraLightBackgroundGray,
          ),
          MenuTile(
            title: 'logout'.tr,
            icon: Icons.exit_to_app,
            onTap: () {
              locator<KeyStoreService>().deleteAll();
              Scaffold.of(context).showSnackBar(
                SnackBar(content: Text('msg_storage_cleared'.tr)),
              );
            },
            color: Colors.red,
            trailing: Icon(Icons.chevron_right),
          ),
        ],
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
