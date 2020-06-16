import 'package:antares_wallet/app/routers/router.gr.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class AntaresApp extends StatelessWidget {
  final FirebaseAnalytics _analytics;

  AntaresApp(this._analytics);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Antares Wallet',
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primary,
        accentColor: AppColors.accent,
        scaffoldBackgroundColor: AppColors.scaffoldBkg,
        fontFamily: 'Proxima_Nova',
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      navigatorObservers: [FirebaseAnalyticsObserver(analytics: _analytics)],
      onGenerateRoute: Router().onGenerateRoute,
      home: ExtendedNavigator<Router>(router: Router()),
    );
  }
}
