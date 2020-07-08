import 'package:antares_wallet/models/transaction_details.dart';
import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/services/repositories/portfolio_history_repository.dart';
import 'package:stacked/stacked.dart';

class PortfolioHistoryViewModel extends ReactiveViewModel
    implements Initialisable {
  final _repository = locator<PortfolioHistoryRepository>();

  bool _filterOpened = false;

  bool get filterOpened => _filterOpened;

  List<TransactionDetails> get historyItems => _repository.items;

  @override
  void initialise() {
    runBusyFuture(_repository.loadHistory());
  }

  Future updateHistory() async {
    runBusyFuture(_repository.updateHistory());
  }

  void updateFilterOpenedState(bool opened) {
    _filterOpened = opened;
    notifyListeners();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_repository];
}
