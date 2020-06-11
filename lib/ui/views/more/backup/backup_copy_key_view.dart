import 'package:antares_wallet/business/view_models/more/settings_view_model.dart';
import 'package:antares_wallet/locator.dart';
import 'package:antares_wallet/ui/navigation/routes.dart';
import 'package:antares_wallet/ui/views/widgets/default_card.dart';
import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BackUpCopyKeyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Back up'),
      ),
      body: ViewModelBuilder<SettingsViewModel>.reactive(
        viewModelBuilder: () => locator<SettingsViewModel>(),
        disposeViewModel: false,
        builder: (_, model, __) {
          return ListView(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              Text(
                'Write this 12-word phrase down and keep it somewhere safe.'
                'Don\'t lose it! Without your phrase, you can\'t access'
                'your wallet and we can\'t help you.',
                textAlign: TextAlign.center,
              ),
              DefaultCard(
                borderRadius: BorderRadius.all(Radius.zero),
                child: Column(
                  children: [
                    SelectableText(model.settings.privateKey),
                    FlatButton(
                      child: Text('Copy'),
                      onPressed: () => _copyKey(
                        context,
                        model.settings.privateKey,
                      ),
                    )
                  ],
                ),
              ),
              CupertinoButton.filled(
                child: Text('Create wallets backup'),
                onPressed: () => Navigator.of(
                  context,
                  rootNavigator: true,
                ).pushNamed(Routes.backUpKeyConfirm),
              ),
            ],
          );
        },
      ),
    );
  }

  _copyKey(BuildContext context, String key) {
    ClipboardManager.copyToClipBoard(key).then((result) {
      Scaffold.of(context).showSnackBar(
        SnackBar(content: Text('Private key copied to Clipboard')),
      );
    });
  }
}
