import 'package:antares_wallet/business/dto/portfolio_history_item.dart';
import 'package:antares_wallet/business/services/api/mock_api.dart';
import 'package:antares_wallet/locator.dart';
import 'package:stacked/stacked.dart';

class PortfolioHistoryViewModel extends BaseViewModel {
  final _api = locator<MockApi>();

  PortfolioHistoryViewModel() {
    setBusy(true);
  }

  List<PortfolioHistoryItem> _portfolioHistoryItems = List();

  List<PortfolioHistoryItem> get historyItems {
    _portfolioHistoryItems.sort(
      (a, b) => a.timestamp.compareTo(b.timestamp),
    );
    return _portfolioHistoryItems.reversed.toList();
  }

  Future initialise() async {
    _portfolioHistoryItems = await _api.fetchPortfolioHistry();
    setBusy(false);
  }

  Future updateHistory() async {
    _portfolioHistoryItems = await _api.updatePortfolioHistory();
    notifyListeners();
  }
}
