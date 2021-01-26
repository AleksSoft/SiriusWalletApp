import 'package:antares_wallet/app/core/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'withdrawal_controller.dart';

class BlockchainWithdrawalDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order details'),
      ),
      body: SafeArea(
        child: GetBuilder<WithdrawalController>(
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
                          subtitle: Text(_.amountWithFeeFormatted),
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
                          visible:
                              _.withdrawalCryptoInfo.addressExtensionMandatory,
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
                                ? () => _.confirmCryptoWithdrawal()
                                : null,
                            child: Text('Confirm'),
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
