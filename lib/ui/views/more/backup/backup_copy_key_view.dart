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
            padding: const EdgeInsets.all(16.0),
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              const SizedBox(height: 16.0),
              Text(
                'Write this 12-word phrase down and keep it somewhere safe.'
                'Don\'t lose it! Without your phrase, you can\'t access'
                'your wallet and we can\'t help you.',
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24.0),
              _KeyWordsCard(),
              const SizedBox(height: 16.0),
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
      child: Text('Create wallets backup'),
      onPressed: () => Navigator.of(
        context,
        rootNavigator: true,
      ).pushNamed(Routes.backUpKeyConfirm),
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
            padding: const EdgeInsets.all(16.0),
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
                child: Text('Copy'),
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
        SnackBar(content: Text('Private key copied to Clipboard')),
      );
    });
  }
}
