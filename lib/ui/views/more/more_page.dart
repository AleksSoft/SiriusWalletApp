import 'package:antares_wallet/business/services/key_store_service.dart';
import 'package:antares_wallet/locator.dart';
import 'package:antares_wallet/ui/navigation/navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'menu_tile.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          MenuTile(
            title: 'Settings',
            icon: Icons.settings,
            onTap: () => Navigator.of(context).pushNamed(Routes.settings),
            trailing: Icon(Icons.chevron_right),
          ),
          MenuTile(
            title: 'Profile',
            icon: Icons.account_circle,
            onTap: () => Navigator.of(context).pushNamed(Routes.profile),
            trailing: Icon(Icons.chevron_right),
          ),
          MenuTile(
            title: 'Support',
            icon: Icons.headset,
            onTap: () => Navigator.of(context).pushNamed(Routes.support),
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
            onTap: () => locator<KeyStoreService>().deleteAll(),
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
