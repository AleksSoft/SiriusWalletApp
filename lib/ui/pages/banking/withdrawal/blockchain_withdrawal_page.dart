import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/withdrawal_controller.dart';
import 'package:antares_wallet/utils/formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'blockchain_withdrawal_details_page.dart';

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
                        '${Formatter.currency(_.selectedAssetBalance.available, symbol: _.selectedAsset?.displayId)} available',
                        style: Get.textTheme.caption,
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
                        icon: FaIcon(
                          FontAwesomeIcons.qrcode,
                          color: AppColors.secondary,
                        ),
                      ),
                      title: Theme(
                        data: Get.theme.copyWith(
                          primaryColor: AppColors.accent,
                        ),
                        child: TextFormField(
                          controller: _.addressController,
                          onChanged: (String value) => _.update(),
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
                          icon: FaIcon(
                            FontAwesomeIcons.qrcode,
                            color: AppColors.secondary,
                          ),
                        ),
                        title: Theme(
                          data: Get.theme.copyWith(
                            primaryColor: AppColors.accent,
                          ),
                          child: TextFormField(
                            controller: _.extController,
                            onChanged: (String value) => _.update(),
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
                            ? () => Get.to(BlockchainWithdrawalDetailsPage())
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
