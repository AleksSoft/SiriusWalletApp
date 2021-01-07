import 'package:antares_wallet/ui/pages/more/widgets/menu_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = Get.textTheme.caption;
    return Scaffold(
      appBar: AppBar(
        title: Text('support'.tr),
      ),
      body: ListView(
        children: <Widget>[
          MenuTile(
            title: 'helpcenter'.tr,
            icon: Icons.info_outline,
            onTap: () => launch('http://lykkex.zendesk.com'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('lykkex.zendesk.com', style: textStyle),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          MenuTile(
            title: 'email_us'.tr,
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
            title: 'call'.tr,
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
}
