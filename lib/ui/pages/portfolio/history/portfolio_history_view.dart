import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/ui/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'filters/portfolio_history_filters_view.dart';
import 'portfolio_history_controller.dart';

class PortfolioHistoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PortfolioHistoryController>(
      init: PortfolioHistoryController(),
      builder: (_) {
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

class _HistoryList extends StatelessWidget {
  final c = PortfolioHistoryController.con;
  @override
  Widget build(context) {
    return RefreshIndicator(
      displacement: 26.0,
      onRefresh: () => c.updateHistory(),
      child: ListView.builder(
        itemCount: c.historyItems.length,
        padding: EdgeInsets.only(
          top: AppSizes.small,
          bottom: AppSizes.medium,
        ),
        itemBuilder: (context, index) => TransactionTile(c.historyItems[index]),
      ),
    );
  }
}
