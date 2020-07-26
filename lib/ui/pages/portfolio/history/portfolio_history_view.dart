import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/ui/pages/portfolio/portfolio_controller.dart';
import 'package:antares_wallet/ui/widgets/filters/portfolio_history_filters_view.dart';
import 'package:antares_wallet/ui/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PortfolioHistoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PortfolioController>(
      builder: (_) {
        return Scaffold(
          body: RefreshIndicator(
            onRefresh: () => _.updateHistory(),
            child: ListView.builder(
              itemCount: _.historyItems.length,
              padding: EdgeInsets.only(
                top: AppSizes.small,
                bottom: AppSizes.medium,
              ),
              itemBuilder: (context, index) =>
                  TransactionTile(_.historyItems[index]),
            ),
          ),
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
