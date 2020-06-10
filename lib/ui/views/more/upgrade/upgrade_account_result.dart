import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/navigation/navigation.dart';
import 'package:antares_wallet/ui/navigation/routes.dart';
import 'package:antares_wallet/ui/views/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpgradeAccountResult extends StatelessWidget {
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
                        'We have everything we need!',
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
                                  'Advanced',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Text('In review'),
                              ],
                            ),
                            Spacer(),
                            Text('48h left'),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.0),
                      Text(
                        'We will check these documents and let you know within 48 hours the status of your account.',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'If you wish to get a monthly limit tailored for you, no problem! Just upgrade to a Pro Individual account.',
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
                  child: CupertinoButton.filled(
                    disabledColor: Colors.grey.withOpacity(0.7),
                    child: Text('Ok'),
                    onPressed: () => NestedNavigatorsBlocProvider.of(context)
                        .selectAndNavigate(
                      NestedNavItemKey.more,
                      (navigator) => navigator.popUntil(
                        ModalRoute.withName(Routes.profile),
                      ),
                    ),
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
