import 'package:antares_wallet/app/core/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';
import 'widgets/login_view.dart';
import 'widgets/verify_sms_view.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => controller.back(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: BackButton(
            color: AppColors.dark,
            onPressed: () => controller.back(),
          ),
          elevation: 0.0,
        ),
        body: Stack(
          children: <Widget>[
            PageView(
              controller: controller.pageViewController,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                SingleChildScrollView(child: LoginView()),
                VerifySmsView(),
              ],
            ),
            Obx(
              () => AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: controller.loading
                    ? Container(
                        color: AppColors.primary.withOpacity(0.9),
                        alignment: Alignment.center,
                        child: AppUiHelpers.circularProgress,
                      )
                    : SizedBox.shrink(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
