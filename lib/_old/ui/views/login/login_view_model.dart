import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/app/routers/router.gr.dart';
import 'package:antares_wallet/app/store_keys.dart';
import 'package:antares_wallet/services/key_store_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel implements Initialisable {
  final _storage = locator<KeyStoreService>();

  @override
  void initialise() {}

  login() {
    runBusyFuture(Future.delayed(Duration(milliseconds: 500)).then((value) {
      ExtendedNavigator.ofRouter<Router>().pop();
      _storage.write(
        StoreKeys.token,
        '9459110ef8e94498b87807d00a9c947014e1c77192fc4b28aed5cd2ecf99f2e2',
      );
    }));
  }
}
