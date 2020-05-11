import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sirius/ui/views/root_view.dart';

import 'app_localizations.dart';
import 'ui/navigation/navigation.dart';

class SiriusApp extends StatelessWidget {
  final NestedNavigatorsBloc _bloc = NestedNavigatorsBloc<NestedNavItemKey>();

  @override
  Widget build(BuildContext context) {
    return NestedNavigatorsBlocProvider(
      bloc: _bloc,
      child: MaterialApp(
        title: 'Lykke Wallet',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          accentColor: Colors.blueAccent,
          scaffoldBackgroundColor: Colors.white,
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
        onGenerateRoute: (routeSettings) => Routes.generateRoute(routeSettings),
        home: RootView(),
      ),
    );
  }
}
