import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sirius/model/blockchain_wallet.dart';
import 'package:sirius/redux/actions/actions.dart';
import 'package:sirius/redux/middlewares/api_middleware.dart';

import 'mocks.dart';

void main() {
  StoreMock store;
  ApiClientMock apiClient;
  ApiMiddleware apiMiddleware;

  setUp(() {
    store = StoreMock();
    apiClient = ApiClientMock();
    apiMiddleware = ApiMiddleware(apiClient);
  });

  test(
      'WHEN fetch cart items action is called '
      'AND api returns cart items  '
      'THEN cart items are loaded', () async {
    final expectedCartList = [
      BlockchainWallet('Test', false),
      BlockchainWallet('Test2', true),
    ];
    when(apiClient.fetchApiWallets())
        .thenAnswer((_) => Future.value(expectedCartList));

    final action = FetchApiWalletsAction((_) {});
    await apiMiddleware.call(store, action, (_) {});

    verify(store.dispatch(WalletsLoadedAction(expectedCartList)));
  });
}
