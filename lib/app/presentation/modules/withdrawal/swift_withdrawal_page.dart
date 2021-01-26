import 'package:antares_wallet/app/core/common/common.dart';
import 'package:antares_wallet/app/core/routes/app_pages.dart';
import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/presentation/widgets/empty_reloading_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'withdrawal_controller.dart';

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
                '${Formatter.currency(_.selectedAssetBalance.available, prefix: _.selectedAsset?.displayId)} available',
                style: Get.textTheme.caption,
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: GetBuilder<WithdrawalController>(
          builder: (_) => EmptyReloadingView(
            isLoading: _.loading,
            customLoader: Container(
              constraints: BoxConstraints.expand(),
              color: AppColors.primary,
              alignment: Alignment.center,
              child: AppUiHelpers.circularProgress,
            ),
            child: SingleChildScrollView(
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
                          text: '${_.selectedAsset?.displayId ?? ''} ${_.fee}',
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
                    onEditingComplete: _.checkSwiftCashoutFee,
                    validator: (String value) {
                      if (value.length >= 8) return null;
                      return 'Check your SWIFT code';
                    },
                    textController: _.swiftController,
                    label: 'Swift',
                  ),
                  _TextListTile(
                    icon: Icons.account_balance,
                    textController: _.bankController,
                    label: 'Name of the Bank',
                  ),
                  _TextListTile(
                    icon: Icons.short_text,
                    textController: _.ibanController,
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
                    textController: _.fullNameController,
                    label: 'Full Name',
                  ),
                  _TextListTile(
                    icon: Icons.business,
                    textController: _.addressController,
                    label: 'Address line',
                  ),
                  _TextListTile(
                    icon: Icons.pin_drop,
                    textController: _.cityController,
                    label: 'City',
                  ),
                  _TextListTile(
                    icon: Icons.mail,
                    textController: _.zipController,
                    label: 'Zip code',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppSizes.medium),
                    child: CupertinoButton.filled(
                      disabledColor: AppColors.secondary.withOpacity(0.7),
                      onPressed: _.proceedAllowed
                          ? () => Get.toNamed(Routes.WITHDRAW_SWIFT_RESULT)
                          : null,
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

class _TextListTile extends GetView<WithdrawalController> {
  const _TextListTile({
    this.validator,
    this.onEditingComplete,
    @required this.textController,
    @required this.icon,
    @required this.label,
    Key key,
  }) : super(key: key);
  final FormFieldValidator<String> validator;
  final VoidCallback onEditingComplete;
  final TextEditingController textController;
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
        data: Get.theme.copyWith(primaryColor: AppColors.accent),
        child: FocusScope(
          onFocusChange: (value) {
            if (!value) onEditingComplete?.call();
          },
          child: TextFormField(
            controller: textController,
            onChanged: (String value) => controller.update(),
            decoration: InputDecoration(labelText: label),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: validator,
          ),
        ),
      ),
    );
  }
}
