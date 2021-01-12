import 'package:antares_wallet/app/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'disclaimers_controller.dart';
import 'widgets/disclaimer_page_view.dart';
import 'widgets/disclaimers_button_row.dart';

class DisclaimersPage extends GetView<DisclaimersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Disclaimer')),
      body: Stack(
        children: [
          Obx(
            () => AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: controller.loading.value
                  ? Center(child: AppUiHelpers.circularProgress)
                  : SizedBox.shrink(),
            ),
          ),
          Obx(
            () => PageView(
              controller: controller.pageController,
              physics: NeverScrollableScrollPhysics(),
              children: controller.disclaimers
                  .map((d) => DisclaimerPageView(d))
                  .toList(),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: DisclaimersButtonRow(
              onCancel: () => controller.decline(),
              onSubmit: () => controller.approve(),
            ),
          ),
        ],
      ),
    );
  }
}
