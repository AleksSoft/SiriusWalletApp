import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sirius/ui/navigation/navigation.dart';

import 'menu_tile.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More'),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          MenuTile(
            title: 'Settings',
            icon: Icons.settings,
          ),
          MenuTile(
            title: 'Wallets',
            icon: Icons.lock,
          ),
          MenuTile(
            title: 'Profile',
            icon: Icons.account_circle,
          ),
          MenuTile(
            title: 'Support',
            icon: Icons.headset,
            onTap: () => Navigator.of(context).pushNamed(Routes.support),
          ),
          MenuTile(
            title: 'Terms and conditions',
            icon: Icons.list,
          ),
          Container(
            height: 8.0,
            color: CupertinoColors.extraLightBackgroundGray,
          ),
          MenuTile(
            title: 'Logout',
            icon: Icons.exit_to_app,
            color: Colors.red,
            chevronVisible: false,
          ),
        ],
      ),
    );
  }
}
