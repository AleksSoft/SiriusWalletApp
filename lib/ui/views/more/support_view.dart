import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'menu_tile.dart';

class SupportView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Support'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          MenuTile(
            title: 'Helpcenter',
            subtitle: 'lykkex.zendesk.com',
            icon: Icons.info_outline,
            onTap: _launchURL,
          ),
          MenuTile(
            title: 'Email us',
            subtitle: 'support@lykke.com',
            icon: Icons.mail_outline,
            onTap: () => launch("mailto:support@lykke.com"),
          ),
          MenuTile(
            title: 'Call',
            subtitle: '+41 43 508 63 79',
            icon: Icons.phone,
            onTap: () => launch("tel:+41435086379"),
          ),
        ],
      ),
    );
  }

  _launchURL() async {
    const url = 'http://lykkex.zendesk.com';
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false, forceSafariVC: false);
    } else {
      throw 'Could not launch $url';
    }
  }
}
