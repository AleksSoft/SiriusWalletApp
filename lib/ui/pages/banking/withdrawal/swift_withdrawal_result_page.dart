import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/withdrawal_controller.dart';
import 'package:antares_wallet/services/utils/formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwiftWithdrawalResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Withdraw'),
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
                    ListTile(
                      title: Text(
                        Formatter.currency(
                          _.amountController.text,
                          symbol: _.selectedAsset?.displayId,
                          maxDecimal: _.selectedAsset?.accuracy,
                        ),
                      ),
                      subtitle: Text('Deducted amount'),
                    ),
                    ListTile(
                      title: Text(
                        Formatter.currency(
                          _.fee.toString(),
                          symbol: _.selectedAsset?.displayId,
                          maxDecimal: _.selectedAsset?.accuracy,
                        ),
                      ),
                      subtitle: Text('Fee'),
                    ),
                    ListTile(
                      title: Text(_.swiftController.text),
                      subtitle: Text('Swift'),
                    ),
                    ListTile(
                      title: Text(_.bankController.text),
                      subtitle: Text('Name of the Bank'),
                    ),
                    ListTile(
                      title: Text(_.ibanController.text),
                      subtitle: Text('Beneficiary\'s Account number (IBAN)'),
                    ),
                    ListTile(
                      title: Text(_.fullNameController.text),
                      subtitle: Text('Name of the account holder'),
                    ),
                    ListTile(
                      title: Text(
                          '${_.addressController.text} ${_.zipController.text} ${_.cityController.text}'),
                      subtitle: Text('Address of the account holder'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppSizes.medium),
                      child: CupertinoButton.filled(
                        disabledColor: AppColors.secondary.withOpacity(0.7),
                        onPressed: _.proceedAllowed
                            ? () => _.confirmSwiftWithdrawal()
                            : null,
                        child: Text('Confirm'),
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
