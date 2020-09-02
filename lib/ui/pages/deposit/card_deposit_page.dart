import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/deposit_controller.dart';
import 'package:antares_wallet/utils/formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardDepositPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('deposit_by_card'.tr),
      ),
      body: SafeArea(
        child: GetBuilder<DepositController>(
          builder: (_) => Stack(
            children: [
              Visibility(
                visible: _.loading,
                child: AppUiHelpers.linearProgress,
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AppUiHelpers.vSpaceMedium,
                    Theme(
                      data: Get.theme.copyWith(primaryColor: AppColors.accent),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.medium,
                        ),
                        child: TextFormField(
                          initialValue: _.amountValue,
                          keyboardType: TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          onChanged: (String value) => _.amountValue = value,
                          decoration: InputDecoration(
                            labelText:
                                'Amount (${_.selectedAsset?.displayId ?? ''})',
                          ),
                        ),
                      ),
                    ),
                    Theme(
                      data: Get.theme.copyWith(primaryColor: AppColors.accent),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.medium,
                        ),
                        child: TextFormField(
                          initialValue: _.fee,
                          keyboardType: TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          enabled: false,
                          decoration: InputDecoration(
                            labelText:
                                'Fee (${_.selectedAsset?.displayId ?? ''})',
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text('Total'),
                      subtitle: Text('Amount + Fee'),
                      trailing: Text(
                        Formatter.currency(
                          _.amountValue,
                          symbol: _.selectedAsset?.displayId,
                          maxDecimal: _.selectedAsset?.accuracy,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppSizes.medium),
                      child: Text(
                        'Third-party credit card payments are not accepted. First credit card deposits may take up to 24 hours to be reflected in your portfolio balance.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    CupertinoButton.filled(
                      disabledColor: AppColors.secondary.withOpacity(0.7),
                      onPressed: _.amountValue.isNullOrBlank
                          ? null
                          : () => _.sendBankTransferRequest(),
                      child: Text('Proceed'),
                    ),
                    AppUiHelpers.vSpaceMedium,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
