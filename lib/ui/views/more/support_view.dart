import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:easy_localization/easy_localization.dart';

import 'menu_tile.dart';

class SupportView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme.caption;
    return Scaffold(
      appBar: AppBar(
        title: Text('support'.tr()),
        elevation: 0.5,
      ),
      body: ListView(
        children: <Widget>[
          MenuTile(
            title: 'helpcenter'.tr(),
            icon: Icons.info_outline,
            onTap: _launchURL,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('lykkex.zendesk.com', style: textStyle),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          MenuTile(
            title: 'email_us'.tr(),
            icon: Icons.mail_outline,
            onTap: () => launch("mailto:support@lykke.com"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('support@lykke.com', style: textStyle),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          MenuTile(
            title: 'сall'.tr(),
            icon: Icons.phone,
            onTap: () => launch("tel:+41435086379"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('+41 43 508 63 79', style: textStyle),
                Icon(Icons.chevron_right),
              ],
            ),
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
      throw 'msg_could_not_launch_url'.tr(args: [url]);
    }
  }
}
