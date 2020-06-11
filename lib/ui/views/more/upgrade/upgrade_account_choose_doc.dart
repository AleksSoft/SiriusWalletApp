import 'package:antares_wallet/ui/navigation/navigation.dart';
import 'package:antares_wallet/ui/views/more/upgrade/upgrade_account_doc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpgradeAccountChooseDocView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upgrade to Advanced'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'Please select the type of identity document',
              style: Theme.of(context).textTheme.button.copyWith(
                    fontSize: 16.0,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          Divider(height: 1.0),
          ListTile(
            title: Text('Passport'),
            trailing: Icon(CupertinoIcons.forward),
            onTap: () => Navigator.of(context, rootNavigator: true).pushNamed(
              Routes.upAccDoc,
              arguments: {
                'docType': DocType.passport,
                hideNavTabBar: true,
              },
            ),
          ),
          Divider(height: 1.0, indent: 16.0, endIndent: 16.0),
          ListTile(
            title: Text('National ID'),
            trailing: Icon(CupertinoIcons.forward),
            onTap: () => Navigator.of(context, rootNavigator: true).pushNamed(
              Routes.upAccDoc,
              arguments: {
                'docType': DocType.nationalId,
                hideNavTabBar: true,
              },
            ),
          ),
          Divider(height: 1.0, indent: 16.0, endIndent: 16.0),
          ListTile(
            title: Text('Driving license'),
            trailing: Icon(CupertinoIcons.forward),
            onTap: () => Navigator.of(context, rootNavigator: true).pushNamed(
              Routes.upAccDoc,
              arguments: {
                'docType': DocType.drivingLicense,
                hideNavTabBar: true,
              },
            ),
          ),
          Divider(height: 1.0, indent: 16.0, endIndent: 16.0),
        ],
      ),
    );
  }
}
