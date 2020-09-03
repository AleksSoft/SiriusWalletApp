import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/withdrawal_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BlockchainWithdrawalResultPage extends StatelessWidget {
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
                      title: Text('Amount'),
                      subtitle: Text(_.amountController.text),
                    ),
                    ListTile(
                      title: Text('Fee'),
                      subtitle: Text(_.fee.toString()),
                    ),
                    ListTile(
                      title: Text('Total'),
                      subtitle: Text(_.amountWithFee),
                    ),
                    ListTile(
                      title: Text('From'),
                      subtitle: Text('Portfolio'),
                    ),
                    ListTile(
                      title: Text('To'),
                      subtitle: Text(_.addressController.text),
                    ),
                    Visibility(
                      visible: _.withdrawalCryptoInfo.addressExtensionMandatory,
                      child: ListTile(
                        title: Text('Memo (text)'),
                        subtitle: Text(_.extController.text),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppSizes.medium),
                      child: CupertinoButton.filled(
                        disabledColor: AppColors.secondary.withOpacity(0.7),
                        onPressed: _.proceedAllowed
                            ? () => _.confirmWithdrawal()
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
