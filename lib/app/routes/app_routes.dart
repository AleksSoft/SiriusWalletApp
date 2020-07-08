import 'package:antares_wallet/bindings/initial_page_binding.dart';
import 'package:antares_wallet/ui/pages/initial/initial_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: InitialPage.route,
      page: () => InitialPage(),
      binding: InitialPageBinding(),
    ),
  ];
}
