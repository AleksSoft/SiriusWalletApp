import 'package:redux/redux.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirius/data/api_client.dart';
import 'package:sirius/model/app_state.dart';
import 'package:sirius/redux/middlewares/api_middleware.dart';
import 'package:sirius/redux/middlewares/blockchain_middleware.dart';
import 'package:sirius/redux/middlewares/logging_middleware.dart';
import 'package:sirius/redux/middlewares/prefs_middleware.dart';

import 'reducers/app_state_reducer.dart';

Future<Store<AppState>> createStore() async {
  final apiClient = ApiClient();
  final sharedPreferences = await SharedPreferences.getInstance();

  return DevToolsStore<AppState>(
    appReducer,
    initialState: AppState.empty(),
    middleware: [
      BlockchainMiddleware(),
      ApiMiddleware(apiClient),
      PrefsMiddleware(sharedPreferences),
      LoggingMiddleware(),
    ],
  );
}
