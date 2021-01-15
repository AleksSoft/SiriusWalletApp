import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'withdrawal_controller.dart';

class BlockchainWithdrawalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('withdraw_funds'.tr),
      ),
      body: SafeArea(
        child: GetBuilder<WithdrawalController>(
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
                    Padding(
                      padding: const EdgeInsets.all(AppSizes.medium),
                      child: Text(
                        'Funds will not be withdrawn from your wallet until you authorize the transaction. Please note that under normal network load withdrawal can take up to 15 minutes to be processed.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Theme(
                      data: Get.theme.copyWith(primaryColor: AppColors.accent),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.medium,
                        ),
                        child: TextFormField(
                          controller: _.amountController,
                          keyboardType: TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          onChanged: (String value) => _.update(),
                          decoration: InputDecoration(
                              labelText: 'Amount',
                              prefix: Text(
                                '${_.selectedAsset?.displayId} ',
                                style: Get.textTheme.button.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                ),
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppSizes.medium),
                      child: Text(
                        '${Formatter.currency(_.selectedAssetBalance.available, prefix: _.selectedAsset?.displayId)} available',
                        style: Get.textTheme.caption.copyWith(
                          color: _.isAmountWithFeeAvailable
                              ? AppColors.secondary
                              : AppColors.red,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Theme(
                      data: Get.theme.copyWith(primaryColor: AppColors.accent),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.medium,
                        ),
                        child: TextFormField(
                          controller: TextEditingController(
                            text:
                                '${_.selectedAsset?.displayId ?? ''} ${_.fee}',
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
                    Padding(
                      padding: const EdgeInsets.all(AppSizes.medium),
                      child: Text(
                        'Wallet address',
                        style: Get.textTheme.headline6.copyWith(
                          color: AppColors.secondary,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    ListTile(
                      leading: IconButton(
                        onPressed: () async =>
                            _.addressController.text = await _.getQrCodeValue(),
                        icon: Icon(
                          Icons.qr_code,
                          color: AppColors.secondary,
                        ),
                      ),
                      title: Theme(
                        data: Get.theme.copyWith(
                          primaryColor: AppColors.accent,
                        ),
                        child: TextFormField(
                          controller: _.addressController,
                          onChanged: (String value) {
                            _.addressObs.value = value;
                            _.update();
                          },
                          validator: (s) =>
                              _.isAddressValid ? null : 'Not valid',
                          decoration: InputDecoration(
                            labelText: 'Address',
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: _.withdrawalCryptoInfo.addressExtensionMandatory,
                      child: ListTile(
                        leading: IconButton(
                          onPressed: () async =>
                              _.extController.text = await _.getQrCodeValue(),
                          icon: Icon(
                            Icons.qr_code,
                            color: AppColors.secondary,
                          ),
                        ),
                        title: Theme(
                          data: Get.theme.copyWith(
                            primaryColor: AppColors.accent,
                          ),
                          child: TextFormField(
                            controller: _.extController,
                            onChanged: (String value) {
                              _.extAddressObs.value = value;
                              _.update();
                            },
                            validator: (s) =>
                                _.isExtAddressValid ? null : 'Not valid',
                            decoration: InputDecoration(
                              labelText:
                                  _.withdrawalCryptoInfo.addressExtensionTitle,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppSizes.medium),
                      child: CupertinoButton.filled(
                        disabledColor: AppColors.secondary.withOpacity(0.7),
                        onPressed: _.proceedAllowed
                            ? () =>
                                Get.toNamed(Routes.WITHDRAW_BLOCKCHAIN_DETAILS)
                            : null,
                        child: Text('Proceed'),
                      ),
                    ),
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