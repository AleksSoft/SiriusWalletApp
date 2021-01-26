import 'package:antares_wallet/app/core/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'deposit_controller.dart';

class CardDepositPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('deposit_by_card'.tr),
      ),
      body: SafeArea(
        child: GetBuilder<DepositController>(
          builder: (_) => AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: _.loading
                ? Container(
                    constraints: BoxConstraints.expand(),
                    color: AppColors.primary,
                    alignment: Alignment.center,
                    child: AppUiHelpers.circularProgress,
                  )
                : SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        AppUiHelpers.vSpaceMedium,
                        Theme(
                          data: Get.theme
                              .copyWith(primaryColor: AppColors.accent),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppSizes.medium,
                            ),
                            child: TextFormField(
                              initialValue: _.amountValue,
                              keyboardType: TextInputType.numberWithOptions(
                                decimal: true,
                              ),
                              onChanged: (String value) =>
                                  _.amountValue = value,
                              decoration: InputDecoration(
                                labelText:
                                    'Amount (${_.selectedAsset?.displayId ?? ''})',
                              ),
                            ),
                          ),
                        ),
                        Theme(
                          data: Get.theme
                              .copyWith(primaryColor: AppColors.accent),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppSizes.medium,
                            ),
                            child: TextFormField(
                              controller: TextEditingController(
                                text: _.fee.toString(),
                              ),
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
                        AppUiHelpers.vSpaceMedium,
                        ListTile(
                          title: Text(
                            'Total',
                            style: Get.textTheme.headline6.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text('Amount + Fee'),
                          trailing: Text(
                            _.amountWithFee,
                            style: Get.textTheme.headline6.copyWith(
                              fontWeight: FontWeight.bold,
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
                        Padding(
                          padding: const EdgeInsets.all(AppSizes.medium),
                          child: CupertinoButton.filled(
                            disabledColor: AppColors.secondary.withOpacity(0.7),
                            onPressed:
                                (double.tryParse(_.amountValue ?? '0') ?? 0) ==
                                        0
                                    ? null
                                    : () => _.proceedCardDeposit(),
                            child: Text('Proceed'),
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
