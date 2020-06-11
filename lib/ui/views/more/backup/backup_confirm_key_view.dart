import 'package:antares_wallet/business/view_models/more/settings_view_model.dart';
import 'package:antares_wallet/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BackUpConfirmKeyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'Click on the words from your 12-word phrase in the order'
                'you wrote them down',
                textAlign: TextAlign.center,
              ),
//              Wrap(
//                children: model.settings.privateKey.split(' ').map((e) => Chip),
//              ),
              CupertinoButton.filled(
                child: Text('Create wallets backup'),
                onPressed: () => Navigator.of(
                  context,
                  rootNavigator: true,
                ).popUntil((route) => route.isFirst),
              ),
            ],
          );
        },
      ),
    );
  }
}
