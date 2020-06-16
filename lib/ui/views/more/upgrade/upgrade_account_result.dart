import 'package:antares_wallet/app/routers/router.gr.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/views/more/profile_view_model.dart';
import 'package:antares_wallet/ui/widgets/default_card.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:easy_localization/easy_localization.dart';

class UpgradeAccountResultView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
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
                        'msg_have_everything'.tr(),
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      SizedBox(height: 24.0),
                      DefaultCard(
                        borderRadius: BorderRadius.circular(8.0),
                        padding: const EdgeInsets.only(
                          left: 12.0,
                          right: 12.0,
                          top: 4.0,
                          bottom: 4.0,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 8.0,
                                bottom: 5.0,
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
                                  'advanced'.tr(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Text('in_review'.tr()),
                              ],
                            ),
                            Spacer(),
                            Text(plural('h_left', 48)),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.0),
                      Text(
                        plural('msg_check_doc_hours', 48),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'msg_upgrade_to_pro'.tr(),
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
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  child: ViewModelBuilder<ProfileViewModel>.nonReactive(
                    viewModelBuilder: () => ProfileViewModel(),
                    builder: (_, model, __) {
                      return CupertinoButton.filled(
                          disabledColor: Colors.grey.withOpacity(0.7),
                          child: Text('ok'.tr()),
                          onPressed: () {
                            ExtendedNavigator.ofRouter<Router>()
                                .popUntil((route) => route.isFirst);
                            model.upgradeAccount();
                          });
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
