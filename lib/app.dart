import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/views/root_view.dart';

import 'app_localizations.dart';
import 'ui/navigation/navigation.dart';

class AntaresApp extends StatelessWidget {
  final NestedNavigatorsBloc _bloc;
  final FirebaseAnalytics _analytics;

  AntaresApp(this._analytics)
      : this._bloc = NestedNavigatorsBloc<NestedNavItemKey>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lykke Wallet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primary,
        accentColor: AppColors.accent,
        scaffoldBackgroundColor: AppColors.scaffoldBkg,
        fontFamily: 'Proxima Nova',
      ),
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ru', 'RU'),
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: _analytics),
      ],
      onGenerateRoute: (routeSettings) => Routes.generateRoute(routeSettings),
      home: NestedNavigatorsBlocProvider(bloc: _bloc, child: RootView()),
    );
  }
}
