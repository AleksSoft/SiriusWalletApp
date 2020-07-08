import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/ui/pages/more/settings/settings_controller.dart';
import 'package:antares_wallet/ui/widgets/default_card.dart';
import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackUpCopyKeyView extends StatelessWidget {
  static final String route = '/back-up-copy-key';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('back_up'.tr),
      ),
      body: GetBuilder<SettingsController>(
        init: SettingsController(),
        builder: (_) {
          return ListView(
            padding: const EdgeInsets.all(AppSizes.medium),
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              AppUiHelpers.vSpaceMedium,
              Text(
                'msg_back_up_write_down'.tr,
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                textAlign: TextAlign.center,
              ),
              AppUiHelpers.vSpaceLarge,
              _KeyWordsCard(),
              AppUiHelpers.vSpaceLarge,
              CupertinoButton.filled(
                child: Text('continue'.tr),
                // TODO: tbd routing
                // onPressed: () => ExtendedNavigator.ofRouter<Router>().pushNamed(
                //   Routes.backUpConfirmKeyRoute,
                // ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _KeyWordsCard extends StatelessWidget {
  final c = SettingsController.con;
  @override
  Widget build(context) {
    return DefaultCard(
      margin: const EdgeInsets.all(0.0),
      borderRadius: BorderRadius.all(Radius.zero),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSizes.medium),
            child: SelectableText(
              c.settings.privateKey,
              style: Theme.of(context).textTheme.headline6.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
            ),
          ),
          Row(
            children: [
              Spacer(),
              FlatButton(
                child: Text('copy'.tr),
                onPressed: () => _copyKey(
                  context,
                  c.settings.privateKey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  _copyKey(BuildContext context, String key) {
    ClipboardManager.copyToClipBoard(key).then((result) {
      Scaffold.of(context).showSnackBar(
        SnackBar(content: Text('msg_key_copied'.tr)),
      );
    });
  }
}
