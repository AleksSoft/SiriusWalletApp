import 'package:antares_wallet/business/view_models/more/settings_view_model.dart';
import 'package:antares_wallet/locator.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BackUpConfirmKeyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Back up'),
      ),
      body: ViewModelBuilder<SettingsViewModel>.nonReactive(
        viewModelBuilder: () => locator<SettingsViewModel>(),
        disposeViewModel: false,
        createNewModelOnInsert: false,
        onModelReady: (model) => model.refreshConfirmKeyVariants(),
        builder: (_, model, __) {
          return ListView(
            padding: const EdgeInsets.all(16.0),
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Click on the words from your 12-word phrase in the order'
                  'you wrote them down',
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              _Chips(),
              SizedBox(height: 16.0),
              _SubmitButton(),
            ],
          );
        },
      ),
    );
  }
}

class _Chips extends ViewModelWidget<SettingsViewModel> {
  const _Chips({
    Key key,
  }) : super(key: key);

  @override
  Widget build(context, model) {
    return ChipsChoice<String>.multiple(
      value: model.confirmKeyWords,
      isWrapped: true,
      itemConfig: ChipsChoiceItemConfig(
        selectedColor: model.wordsMatch ? AppColors.accent : AppColors.red,
        unselectedColor: AppColors.secondary,
        showCheckmark: false,
        elevation: 3.0,
        unselectedBorderOpacity: 0.0,
      ),
      options: ChipsChoiceOption.listFrom<String, String>(
        source: model.confirmKeyVariants,
        value: (i, v) => v,
        label: (i, v) => v,
      ),
      onChanged: (val) => model.updateConfirmKeyWords(val),
    );
  }
}

class _SubmitButton extends ViewModelWidget<SettingsViewModel> {
  const _SubmitButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(context, model) {
    return CupertinoButton.filled(
      disabledColor: Colors.grey.withOpacity(0.7),
      child: Text('Create wallets backup'),
      onPressed: model.phraseComplete
          ? () => Navigator.of(
                context,
                rootNavigator: true,
              ).popUntil((route) => route.isFirst)
          : null,
    );
  }
}
