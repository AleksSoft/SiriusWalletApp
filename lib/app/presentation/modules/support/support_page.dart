import 'package:antares_wallet/app/presentation/widgets/menu_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'support_controller.dart';

class SupportPage extends GetView<SupportController> {
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
            onTap: controller.openHelpCenter,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(controller.shortHelpCenterUrl, style: textStyle),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          MenuTile(
            title: 'email_us'.tr,
            icon: Icons.mail_outline,
            onTap: controller.mailToSupport,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(controller.supportEmail, style: textStyle),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          MenuTile(
            title: 'call'.tr,
            icon: Icons.phone,
            onTap: controller.callSupport,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(controller.supportPhone, style: textStyle),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
