import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/profile_controller.dart';
import 'package:antares_wallet/ui/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/upgrade_request_view.dart';

class UpgradeAccountResultPage extends StatelessWidget {
  static final String route = '/upgrade-account-result';
  final c = ProfileController.con;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.extraLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                flex: 5,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'msg_have_everything'.tr,
                        style: Get.textTheme.headline6.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      AppUiHelpers.vSpaceLarge,
                      Obx(
                        () => Visibility(
                          visible: c.tierInfo.upgradeRequest.hasTier(),
                          child: UpgradeRequestView(c.tierInfo.upgradeRequest),
                        ),
                      ),
                      AppUiHelpers.vSpaceLarge,
                      Text(
                        'msg_check_doc_hours'.trArgs(['48']),
                        textAlign: TextAlign.center,
                      ),
                      AppUiHelpers.vSpaceMedium,
                      Text(
                        'msg_upgrade_to_s_account'.trArgs(
                          [c.tierInfo?.nextTier?.tier ?? ''],
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: DefaultCard(
                  blurRadius: 10,
                  shadowColor: AppColors.accent.withOpacity(0.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppSizes.small),
                  ),
                  child: CupertinoButton.filled(
                    disabledColor: Colors.grey.withOpacity(0.7),
                    child: Text('ok'.tr),
                    onPressed: () => c.submitProfile(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
