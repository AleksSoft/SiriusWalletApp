import 'package:antares_wallet/ui/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'filters/portfolio_history_filters_view.dart';
import 'portfolio_history_view_model.dart';

class PortfolioHistoryView extends StatelessWidget {
  PortfolioHistoryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PortfolioHistoryViewModel>.nonReactive(
      viewModelBuilder: () => PortfolioHistoryViewModel(),
      builder: (_, __, ___) {
        return Scaffold(
          body: _HistoryList(),
          floatingActionButton: FloatingActionButton(
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (context) => PortfolioHistoryFiltersView(),
            ),
            child: Icon(Icons.filter_list),
          ),
        );
      },
    );
  }
}

class _HistoryList extends ViewModelWidget<PortfolioHistoryViewModel> {
  const _HistoryList({Key key}) : super(key: key);

  @override
  Widget build(context, model) {
    return RefreshIndicator(
      displacement: 26.0,
      onRefresh: () => model.updateHistory(),
      child: ListView.builder(
        itemCount: model.historyItems.length,
        padding: EdgeInsets.only(
          top: 8.0,
          bottom: 16.0,
        ),
        itemBuilder: (context, index) =>
            TransactionTile(model.historyItems[index]),
      ),
    );
  }
}
