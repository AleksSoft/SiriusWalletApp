import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu_tile.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Support'),
        elevation: 0.5,
      ),
      body: ListView(
        children: <Widget>[
          MenuTile(
            title: 'Base Asset',
            subtitle: 'EUR',
            icon: Icons.looks_one,
            iconColor: Colors.black,
            color: Colors.transparent,
            showDivider: false,
          ),
          MenuTile(
            title: 'Push-notifications',
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
            title: 'PIN',
            subtitle: 'Sigh orders with PIN',
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
            title: 'Backup private key',
            icon: Icons.vpn_key,
            iconColor: Colors.black,
            color: Colors.transparent,
            showDivider: false,
          ),
          MenuTile(
            title: 'About',
            icon: Icons.info_outline,
            iconColor: Colors.black,
            color: Colors.transparent,
            showDivider: false,
            onTap: () => showAboutDialog(context: context),
          ),
        ],
      ),
    );
  }
}
