import 'package:antares_wallet/business/view_models/more/settings_view_model.dart';
import 'package:antares_wallet/locator.dart';
import 'package:antares_wallet/ui/navigation/routes.dart';
import 'package:antares_wallet/ui/views/select_asset_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'menu_tile.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        elevation: 0.0,
      ),
      body: ViewModelBuilder<SettingsViewModel>.reactive(
          viewModelBuilder: () => locator<SettingsViewModel>(),
          disposeViewModel: false,
          createNewModelOnInsert: false,
          onModelReady: (model) => model.initialise(),
          builder: (context, model, child) {
            return ListView(
              children: <Widget>[
                MenuTile(
                  title: 'Base Asset',
                  subtitle: model.settings.baseAsset?.symbol ?? '',
                  icon: Icons.looks_one,
                  iconColor: Colors.black,
                  color: Colors.transparent,
                  showDivider: false,
                  onTap: () async {
                    final asset = await Navigator.of(context).pushNamed(
                      Routes.selectAsset,
                      arguments: SelectAssetArgs(
                        title: 'Select asset',
                        selectedAsset: model.settings.baseAsset,
                      ),
                    );
                    model.updateBaseAsset(asset);
                  },
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
                  onTap: () => Navigator.of(
                    context,
                    rootNavigator: true,
                  ).pushNamed(Routes.backUpKeyCopy),
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
            );
          }),
    );
  }
}
