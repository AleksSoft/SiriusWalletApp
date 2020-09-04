import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/withdrawal_controller.dart';
import 'package:antares_wallet/utils/formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'swift_withdrawal_result_page.dart';

class SwiftWithdrawalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Withdraw'),
            GetBuilder<WithdrawalController>(
              builder: (_) => Text(
                '${Formatter.currency(_.selectedAssetBalance.available, symbol: _.selectedAsset?.displayId)} available',
                style: Get.textTheme.caption,
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
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
                      padding: const EdgeInsets.only(
                        top: AppSizes.small,
                        left: AppSizes.medium,
                        right: AppSizes.medium,
                      ),
                      child: Text(
                        'Please enter SWIFT...',
                        style: Get.textTheme.caption.copyWith(
                          fontSize: 14.0,
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
                          controller: _.wiredAmountController,
                          keyboardType: TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          onChanged: (String value) => _.update(),
                          decoration: InputDecoration(
                              labelText: 'Wired amount',
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
                      padding: const EdgeInsets.only(
                        top: AppSizes.medium,
                        right: AppSizes.medium,
                        left: AppSizes.medium,
                      ),
                      child: Text(
                        'Account details',
                        style: Get.textTheme.headline6.copyWith(
                          color: AppColors.secondary,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'For the withdrawal of funds, the following account details will be used',
                        style: Get.textTheme.button,
                        textAlign: TextAlign.left,
                      ),
                      trailing: Icon(Icons.warning),
                    ),
                    _TextListTile(
                      icon: Icons.info_outline,
                      controller: _.swiftController,
                      label: 'Swift',
                    ),
                    _TextListTile(
                      icon: Icons.account_balance,
                      controller: _.bankController,
                      label: 'Name of the Bank',
                    ),
                    _TextListTile(
                      icon: Icons.short_text,
                      controller: _.ibanController,
                      label: 'Beneficiary\'s Account number (IBAN)',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: AppSizes.medium,
                        right: AppSizes.medium,
                        left: AppSizes.medium,
                      ),
                      child: Text(
                        'Account holder information',
                        style: Get.textTheme.headline6.copyWith(
                          color: AppColors.secondary,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppSizes.medium),
                      child: Text(
                        'Withdrawals to third parties or anonymus accounts are not allowed, you can only make withdrawals to your own bank account.',
                        style: Get.textTheme.button,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    _TextListTile(
                      icon: Icons.account_circle,
                      controller: _.fullNameController,
                      label: 'Full Name',
                    ),
                    _TextListTile(
                      icon: Icons.business,
                      controller: _.addressController,
                      label: 'Address line',
                    ),
                    _TextListTile(
                      icon: Icons.pin_drop,
                      controller: _.cityController,
                      label: 'City',
                    ),
                    _TextListTile(
                      icon: Icons.mail,
                      controller: _.zipController,
                      label: 'Zip code',
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppSizes.medium),
                      child: CupertinoButton.filled(
                        disabledColor: AppColors.secondary.withOpacity(0.7),
                        onPressed: _.proceedAllowed
                            ? () => Get.to(SwiftWithdrawalResultPage())
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

class _TextListTile extends StatelessWidget {
  const _TextListTile({
    @required this.controller,
    @required this.icon,
    @required this.label,
    Key key,
  }) : super(key: key);
  final TextEditingController controller;
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: AppColors.secondary,
            size: AppSizes.extraLarge,
          ),
        ],
      ),
      title: Theme(
        data: Get.theme.copyWith(
          primaryColor: AppColors.accent,
        ),
        child: TextFormField(
          controller: controller,
          onChanged: (String value) => WithdrawalController.con.update(),
          decoration: InputDecoration(
            labelText: label,
          ),
        ),
      ),
    );
  }
}
