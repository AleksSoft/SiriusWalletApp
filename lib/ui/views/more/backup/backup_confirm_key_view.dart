import 'package:antares_wallet/app/routers/router.gr.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:easy_localization/easy_localization.dart';

import '../settings_view_model.dart';

class BackUpConfirmKeyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0.0,
        title: Text('back_up'.tr()),
      ),
      body: ViewModelBuilder<SettingsViewModel>.nonReactive(
        viewModelBuilder: () => SettingsViewModel(),
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
                  'msg_back_up_confirm'.tr(),
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
      child: Text('create_wallets_backup'.tr()),
      onPressed: model.phraseComplete
          ? () => ExtendedNavigator.ofRouter<Router>()
              .popUntil((route) => route.isFirst)
          : null,
    );
  }
}
