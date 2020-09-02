import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/deposit_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwiftDepositPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('deposit_by_swift'.tr),
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
                  children: [
                    Theme(
                      data: Get.theme.copyWith(primaryColor: AppColors.accent),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: AppSizes.medium,
                          left: AppSizes.medium,
                          right: AppSizes.medium,
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
                    ListTile(
                      subtitle: Text(
                        'To deposit to to your Portfolio please use the following bank account details. Senders bank details should match with the wallet account. Third party and/or anonymous payments cannot be accepted.',
                      ),
                      trailing: IconButton(
                        alignment: Alignment.topCenter,
                        onPressed: () {},
                        icon: Icon(Icons.info_outline),
                      ),
                    ),
                    _buildListTile(
                      _.assetSwiftCreds.bic,
                      'BIC (SWIFT)',
                    ),
                    _buildListTile(
                      _.assetSwiftCreds.accountNumber,
                      'Account number',
                    ),
                    _buildListTile(
                      _.assetSwiftCreds.accountName,
                      'Account name',
                    ),
                    _buildListTile(
                      _.assetSwiftCreds.bankAddress,
                      'Bank address',
                    ),
                    _buildListTile(
                      _.assetSwiftCreds.correspondentAccount,
                      'Correspondent (intermediary) bank',
                    ),
                    _buildListTile(
                      _.assetSwiftCreds.companyAddress,
                      'Company address',
                    ),
                    _buildListTile(
                      _.assetSwiftCreds.purposeOfPayment,
                      'Purpose of payment',
                    ),
                    AppUiHelpers.vSpaceMedium,
                    CupertinoButton.filled(
                      disabledColor: AppColors.secondary.withOpacity(0.7),
                      onPressed: _.amountValue.isNullOrBlank
                          ? null
                          : () => _.sendBankTransferRequest(),
                      child: Text('Email me'),
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

  ListTile _buildListTile(String title, String subtitle) {
    return ListTile(
      title: Text(title ?? ''),
      subtitle: Text(subtitle ?? ''),
      trailing: IconButton(
        onPressed: () => DepositController.con.copy(subtitle ?? ''),
        icon: Icon(Icons.content_copy),
      ),
    );
  }
}
