import 'package:antares_wallet/app/routers/router.gr.dart';
import 'package:antares_wallet/ui/common/app_sizes.dart';
import 'package:antares_wallet/ui/common/app_ui_helpers.dart';
import 'package:antares_wallet/ui/widgets/default_card.dart';
import 'package:auto_route/auto_route.dart';
import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:easy_localization/easy_localization.dart';

import '../settings_view_model.dart';

class BackUpCopyKeyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('back_up'.tr()),
      ),
      body: ViewModelBuilder<SettingsViewModel>.reactive(
        viewModelBuilder: () => SettingsViewModel(),
        builder: (_, __, ___) {
          return ListView(
            padding: const EdgeInsets.all(AppSizes.medium),
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              AppUiHelpers.vSpaceMedium,
              Text(
                'msg_back_up_write_down'.tr(),
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                textAlign: TextAlign.center,
              ),
              AppUiHelpers.vSpaceLarge,
              _KeyWordsCard(),
              AppUiHelpers.vSpaceLarge,
              _SubmitButton(),
            ],
          );
        },
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
      child: Text('continue'.tr()),
      onPressed: () => ExtendedNavigator.ofRouter<Router>().pushNamed(
        Routes.backUpConfirmKeyRoute,
      ),
    );
  }
}

class _KeyWordsCard extends ViewModelWidget<SettingsViewModel> {
  const _KeyWordsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(context, model) {
    return DefaultCard(
      margin: const EdgeInsets.all(0.0),
      borderRadius: BorderRadius.all(Radius.zero),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSizes.medium),
            child: SelectableText(
              model.settings.privateKey,
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
                child: Text('copy'.tr()),
                onPressed: () => _copyKey(
                  context,
                  model.settings.privateKey,
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
        SnackBar(content: Text('msg_key_copied'.tr())),
      );
    });
  }
}
