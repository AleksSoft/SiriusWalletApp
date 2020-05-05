import 'package:sirius/model/app_state.dart';
import 'package:sirius/redux/reducers/tabs_reducer.dart';
import 'package:sirius/redux/reducers/wallet_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    activeTab: tabsReducer(state.activeTab, action),
    wallets: walletsReducer(state.wallets, action),
  );
}
