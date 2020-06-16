import 'package:antares_wallet/app/routers/router.gr.dart';
import 'package:antares_wallet/ui/views/more/upgrade/upgrade_account_doc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class UpgradeAccountChooseDocView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('upgrade_to'.tr(args: ['Advanced'])),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'msg_select_type_doc'.tr(),
              style: Theme.of(context).textTheme.button.copyWith(
                    fontSize: 16.0,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          Divider(height: 1.0),
          ListTile(
            title: Text('passport'.tr()),
            trailing: Icon(CupertinoIcons.forward),
            onTap: () => ExtendedNavigator.ofRouter<Router>().pushNamed(
              Routes.upgradeAccountDocRoute,
              arguments: UpgradeAccountDocViewArguments(
                docType: DocType.passport,
              ),
            ),
          ),
          Divider(height: 1.0, indent: 16.0, endIndent: 16.0),
          ListTile(
            title: Text('national_id'.tr()),
            trailing: Icon(CupertinoIcons.forward),
            onTap: () => ExtendedNavigator.ofRouter<Router>().pushNamed(
              Routes.upgradeAccountDocRoute,
              arguments: UpgradeAccountDocViewArguments(
                docType: DocType.nationalId,
              ),
            ),
          ),
          Divider(height: 1.0, indent: 16.0, endIndent: 16.0),
          ListTile(
            title: Text('driving_license'.tr()),
            trailing: Icon(CupertinoIcons.forward),
            onTap: () => ExtendedNavigator.ofRouter<Router>().pushNamed(
              Routes.upgradeAccountDocRoute,
              arguments: UpgradeAccountDocViewArguments(
                docType: DocType.drivingLicense,
              ),
            ),
          ),
          Divider(height: 1.0, indent: 16.0, endIndent: 16.0),
        ],
      ),
    );
  }
}
