import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpgradeAccountChooseDocPage extends StatelessWidget {
  static final String route = '/upgrade-account-choose-doc';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('upgrade_to'.trArgs(['Advanced'])),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSizes.large),
            child: Text(
              'msg_select_type_doc'.tr,
              style: Get.textTheme.button.copyWith(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
          ),
          Divider(height: 1.0),
          ListTile(
            title: Text('passport'.tr),
            trailing: Icon(CupertinoIcons.forward),
            // TODO: tbd routing
            // onTap: () => ExtendedNavigator.ofRouter<Router>().pushNamed(
            //   Routes.upgradeAccountDocRoute,
            //   arguments: UpgradeAccountDocViewArguments(
            //     docType: DocType.passport,
            //   ),
            // ),
          ),
          Divider(
              height: 1.0, indent: AppSizes.medium, endIndent: AppSizes.medium),
          ListTile(
            title: Text('national_id'.tr),
            trailing: Icon(CupertinoIcons.forward),
            // TODO: tbd routing
            // onTap: () => ExtendedNavigator.ofRouter<Router>().pushNamed(
            //   Routes.upgradeAccountDocRoute,
            //   arguments: UpgradeAccountDocViewArguments(
            //     docType: DocType.nationalId,
            //   ),
            // ),
          ),
          Divider(
              height: 1.0, indent: AppSizes.medium, endIndent: AppSizes.medium),
          ListTile(
            title: Text('driving_license'.tr),
            trailing: Icon(CupertinoIcons.forward),
            // TODO: tbd routing
            // onTap: () => ExtendedNavigator.ofRouter<Router>().pushNamed(
            //   Routes.upgradeAccountDocRoute,
            //   arguments: UpgradeAccountDocViewArguments(
            //     docType: DocType.drivingLicense,
            //   ),
            // ),
          ),
          Divider(
            height: 1.0,
            indent: AppSizes.medium,
            endIndent: AppSizes.medium,
          ),
        ],
      ),
    );
  }
}
