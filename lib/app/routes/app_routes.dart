import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/bindings/initial_binding.dart';
import 'package:antares_wallet/ui/pages/initial/initial_page.dart';
import 'package:antares_wallet/ui/pages/login/login_page.dart';
import 'package:antares_wallet/ui/pages/root/root_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AppRoutes {
  static bool get _hasToken => GetStorage().hasData(AppStorageKeys.token);

  static final routes = [
    GetPage(
      name: InitialPage.route,
      page: () => _hasToken ? RootPage() : InitialPage(),
      binding: InitialPageBinding(),
    ),
    GetPage(
      name: LoginPage.route,
      page: () => LoginPage(),
    ),
  ];
}
