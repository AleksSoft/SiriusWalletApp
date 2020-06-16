import 'package:antares_wallet/app/routers/router.gr.dart';
import 'package:antares_wallet/ui/views/more/settings_view_model.dart';
import 'package:antares_wallet/ui/views/select_asset/select_asset_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:easy_localization/easy_localization.dart';

import 'menu_tile.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('settings'.tr()),
        elevation: 0.0,
      ),
      body: ViewModelBuilder<SettingsViewModel>.reactive(
          viewModelBuilder: () => SettingsViewModel(),
          onModelReady: (model) => model.initialise(),
          builder: (_, model, __) {
            return ListView(
              children: <Widget>[
                MenuTile(
                  title: 'base_asset'.tr(),
                  subtitle: model.settings.baseAsset?.symbol ?? '',
                  icon: Icons.looks_one,
                  iconColor: Colors.black,
                  color: Colors.transparent,
                  showDivider: false,
                  onTap: () async {
                    final asset =
                        await ExtendedNavigator.ofRouter<Router>().pushNamed(
                      Routes.selectAssetRoute,
                      arguments: SelectAssetViewArguments(
                        args: SelectAssetArgs(
                          title: 'select_asset'.tr(),
                          selectedAsset: model.settings.baseAsset,
                        ),
                      ),
                    );
                    model.updateBaseAsset(asset);
                  },
                ),
                MenuTile(
                  title: 'push_notifications'.tr(),
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
                  title: 'pin'.tr(),
                  subtitle: 'sign_order_with_pin'.tr(),
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
                  title: 'backup_private_key'.tr(),
                  icon: Icons.vpn_key,
                  iconColor: Colors.black,
                  color: Colors.transparent,
                  showDivider: false,
                  onTap: () => ExtendedNavigator.ofRouter<Router>()
                      .pushNamed(Routes.backUpCopyKeyRoute),
                ),
                MenuTile(
                  title: 'about'.tr(),
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
