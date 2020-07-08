import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/ui/pages/more/profile/profile_controller.dart';
import 'package:antares_wallet/ui/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpgradeAccountResultPage extends StatelessWidget {
  static final String route = '/upgrade-account-result';
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
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      AppUiHelpers.vSpaceLarge,
                      DefaultCard(
                        borderRadius: BorderRadius.circular(AppSizes.small),
                        padding: const EdgeInsets.only(
                          left: 12.0,
                          right: 12.0,
                          top: AppSizes.extraSmall,
                          bottom: AppSizes.extraSmall,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: AppSizes.small,
                                bottom: AppSizes.extraSmall,
                              ),
                              child: Center(
                                child: Icon(
                                  CupertinoIcons.time,
                                  size: 44.0,
                                  color: Colors.amber[700],
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'advanced'.tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Text('in_review'.tr),
                              ],
                            ),
                            Spacer(),
                            Text('h_left'.trArgs(['48'])),
                          ],
                        ),
                      ),
                      AppUiHelpers.vSpaceLarge,
                      Text(
                        'msg_check_doc_hours'.trArgs(['48']),
                        textAlign: TextAlign.center,
                      ),
                      AppUiHelpers.vSpaceMedium,
                      Text(
                        'msg_upgrade_to_pro'.tr,
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
                  child: GetBuilder<ProfileController>(
                    builder: (_) {
                      return CupertinoButton.filled(
                        disabledColor: Colors.grey.withOpacity(0.7),
                        child: Text('ok'.tr),
                        // TODO: tbd routing
                        // onPressed: () {
                        //   ExtendedNavigator.ofRouter<Router>()
                        //       .popUntil((route) => route.isFirst);
                        //   model.upgradeAccount();
                        // },
                      );
                    },
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
