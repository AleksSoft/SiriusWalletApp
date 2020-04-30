import 'package:flutter/material.dart';
import 'package:sirius/core/common/common.dart';
import 'package:sirius/ui/screens/screens.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
//      case RoutePath.add_address:
//        return MaterialPageRoute(
//          builder: (context) => AddAddressScreen(),
//        );
      case RoutePath.address_list:
        return MaterialPageRoute(
          builder: (context) => AddressListScreen(),
        );
      case RoutePath.splash:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}
