import 'package:antares_wallet/app/routers/more_nested_router.gr.dart';
import 'package:antares_wallet/services/key_store_service.dart';
import 'package:antares_wallet/app/locator.dart';
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
        title: Text('more'.tr()),
        elevation: 0.0,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          MenuTile(
            title: 'Settings',
            icon: Icons.settings,
            onTap: () => ExtendedNavigator.ofRouter<MoreNestedRouter>()
                .pushNamed(Routes.moreSettingsRoute),
            trailing: Icon(Icons.chevron_right),
          ),
          MenuTile(
            title: 'Profile',
            icon: Icons.account_circle,
            onTap: () => ExtendedNavigator.ofRouter<MoreNestedRouter>()
                .pushNamed(Routes.moreProfileRoute),
            trailing: Icon(Icons.chevron_right),
          ),
          MenuTile(
            title: 'Support',
            icon: Icons.headset,
            onTap: () => ExtendedNavigator.ofRouter<MoreNestedRouter>()
                .pushNamed(Routes.moreSupportRoute),
            trailing: Icon(Icons.chevron_right),
          ),
          MenuTile(
            title: 'Terms and conditions',
            icon: Icons.list,
            onTap: () => _launchURL('https://www.lykke.com/cp/terms_of_use'),
            trailing: Icon(Icons.chevron_right),
          ),
          Container(
            height: 8.0,
            color: CupertinoColors.extraLightBackgroundGray,
          ),
          MenuTile(
            title: 'Logout',
            icon: Icons.exit_to_app,
            onTap: () {
              locator<KeyStoreService>().deleteAll();
              Scaffold.of(context).showSnackBar(
                SnackBar(content: Text('msg_storage_cleared'.tr())),
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
