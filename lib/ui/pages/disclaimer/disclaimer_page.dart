import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/disclaimers_controler.dart';
import 'package:antares_wallet/src/apiservice.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DisclaimerPage extends StatelessWidget {
  final c = DisclaimersController.con;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Text('Disclaimer'),
        actions: [CloseButton()],
      ),
      body: Stack(
        children: [
          Positioned(
            left: AppSizes.medium,
            top: AppSizes.medium,
            right: AppSizes.medium,
            bottom: AppSizes.extraLarge * 2 + AppSizes.medium,
            child: Obx(
              () => AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: c.disclaimers.isNotEmpty
                    ? PageView(
                        controller: c.pageController,
                        physics: NeverScrollableScrollPhysics(),
                        children:
                            c.disclaimers.map((d) => _PageView(d)).toList(),
                      )
                    : Center(
                        child: CircularProgressIndicator(
                          valueColor: new AlwaysStoppedAnimation<Color>(
                            Colors.black,
                          ),
                        ),
                      ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _ButtonRow(
              onCancel: c.cancel(),
              onSubmit: c.submit(),
            ),
          ),
        ],
      ),
    );
  }
}

class _PageView extends StatelessWidget {
  const _PageView(this.assetDisclaimer, {Key key}) : super(key: key);
  final AssetDisclaimer assetDisclaimer;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Text(
          assetDisclaimer.text,
          softWrap: true,
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}

class _ButtonRow extends StatelessWidget {
  const _ButtonRow({
    Key key,
    @required this.onCancel,
    @required this.onSubmit,
  }) : super(key: key);
  final VoidCallback onCancel;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: AppSizes.extraLarge * 2,
      width: Get.width,
      color: AppColors.primary,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          AppUiHelpers.hSpaceLarge,
          Expanded(
            child: FlatButton(
              color: AppColors.red,
              padding: const EdgeInsets.all(AppSizes.medium),
              splashColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.small),
              ),
              onPressed: () => onSubmit?.call(),
              child: Text(
                'Cancel',
                style: Get.textTheme.button.copyWith(
                  color: AppColors.primary,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          AppUiHelpers.hSpaceLarge,
          Expanded(
            child: FlatButton(
              color: AppColors.green,
              padding: const EdgeInsets.all(AppSizes.medium),
              splashColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.small),
              ),
              onPressed: () => onCancel?.call(),
              child: Text(
                'Submit',
                style: Get.textTheme.button.copyWith(
                  color: AppColors.primary,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          AppUiHelpers.hSpaceLarge,
        ],
      ),
    );
  }
}
