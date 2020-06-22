import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/models/transaction_details.dart';
import 'package:antares_wallet/services/repositories/portfolio_history_repository.dart';
import 'package:stacked/stacked.dart';

class AssetInfoTransfersViewModel extends BaseViewModel
    implements Initialisable {
  final _repository = locator<PortfolioHistoryRepository>();

  List<TransactionDetails> get trades => _repository.items;

  @override
  void initialise() {
    runBusyFuture(_repository.loadHistory());
  }
}
