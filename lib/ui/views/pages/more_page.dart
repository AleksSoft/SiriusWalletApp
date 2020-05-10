import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sirius/ui/widgets/more_tile.dart';

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
          MoreTile(
            title: 'Settings',
            icon: Icons.settings,
          ),
          MoreTile(
            title: 'Wallets',
            icon: Icons.lock,
          ),
          MoreTile(
            title: 'Profile',
            icon: Icons.account_circle,
          ),
          MoreTile(
            title: 'Support',
            icon: Icons.headset,
          ),
          MoreTile(
            title: 'Terms and conditions',
            icon: Icons.list,
          ),
          Container(
            height: 8.0,
            color: CupertinoColors.extraLightBackgroundGray,
          ),
          MoreTile(
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
