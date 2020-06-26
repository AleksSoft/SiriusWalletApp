import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/services/key_store_service.dart';
import 'package:stacked/stacked.dart';

class InitialViewModel extends ReactiveViewModel implements Initialisable {
  final _storage = locator<KeyStoreService>();

  InitialViewModel() {
    setBusy(true);
  }

  bool get loggedIn => _storage.authToken != null;

  @override
  void initialise() {
    runBusyFuture(_storage.fetchStoredData());
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_storage];
}
