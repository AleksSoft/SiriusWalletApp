import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../settings_controller.dart';

class BackUpConfirmKeyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('back_up'.tr),
      ),
      body: GetBuilder<SettingsController>(
        builder: (_) {
          return ListView(
            padding: const EdgeInsets.all(AppSizes.medium),
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: AppSizes.medium),
                child: Text(
                  'msg_back_up_confirm'.tr,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              _Chips(),
              AppUiHelpers.vSpaceMedium,
              CupertinoButton.filled(
                disabledColor: Colors.grey.withOpacity(0.7),
                child: Text('create_wallets_backup'.tr),
                // TODO: tbd routing
                // onPressed: model.phraseComplete
                //     ? () => ExtendedNavigator.ofRouter<Router>()
                //         .popUntil((route) => route.isFirst)
                //     : null,
              ),
            ],
          );
        },
      ),
    );
  }
}

class _Chips extends StatelessWidget {
  final c = SettingsController.con;

  @override
  Widget build(context) {
    return ChipsChoice<String>.multiple(
      value: c.confirmKeyWords,
      isWrapped: true,
      itemConfig: ChipsChoiceItemConfig(
        selectedColor: c.wordsMatch ? AppColors.accent : AppColors.red,
        unselectedColor: AppColors.secondary,
        showCheckmark: false,
        elevation: 3.0,
        unselectedBorderOpacity: 0.0,
      ),
      options: ChipsChoiceOption.listFrom<String, String>(
        source: c.confirmKeyVariants,
        value: (i, v) => v,
        label: (i, v) => v,
      ),
      onChanged: (val) => c.updateConfirmKeyWords(val),
    );
  }
}
