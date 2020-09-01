import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/deposit_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DepositCardInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Text('deposit_by_swift'.tr),
      ),
      body: SafeArea(
        child: GetBuilder<DepositController>(
          builder: (_) => Column(
            children: [
              Visibility(
                visible: _.loading,
                child: AppUiHelpers.linearProgress,
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  ListTile(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
