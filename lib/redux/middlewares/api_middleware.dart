import 'package:redux/redux.dart';
import 'package:sirius/data/api_client.dart';
import 'package:sirius/model/app_state.dart';
import 'package:sirius/redux/actions/actions.dart';

class ApiMiddleware extends MiddlewareClass<AppState> {
  final ApiClient apiClient;

  ApiMiddleware(this.apiClient);

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    if (action is FetchApiWalletsAction) {
      return _fetchApiWallets(store, action);
    }

    next(action);
  }

  Future _fetchApiWallets(
      Store<AppState> store, FetchApiWalletsAction action) async {
    action.callback(true);
    var wallets = await apiClient.fetchApiWallets();
    store.dispatch(WalletsLoadedAction(wallets));
    action.callback(false);
  }
}
