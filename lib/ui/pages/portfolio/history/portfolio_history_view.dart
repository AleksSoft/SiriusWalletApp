import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/ui/widgets/empty_view.dart';
import 'package:antares_wallet/ui/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'filters/portfolio_history_filters_view.dart';

class PortfolioHistoryView extends StatelessWidget {
  final c = PortfolioController.con;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        heroTag: 'portfolio-history-filter-fab',
        onPressed: () => Get.to(
          PortfolioHistoryFiltersView(),
          fullscreenDialog: true,
          transition: Transition.downToUp,
        ),
        child: Icon(Icons.filter_list),
      ),
      body: RefreshIndicator(
        color: AppColors.dark,
        onRefresh: () => c.reloadHistory(silent: true),
        child: GetX<PortfolioController>(
          initState: (state) => c.reloadHistory(),
          builder: (_) {
            return LoadHelperView(
              emptyHeader: 'No portfolio history yet',
              emptyMessage: '',
              showEmpty: _.historyItems.isEmpty,
              loading: _.loading,
              child: ListView.builder(
                itemCount: _.historyItems.length,
                padding: EdgeInsets.only(
                  top: AppSizes.small,
                  bottom: AppSizes.medium,
                ),
                itemBuilder: (context, index) =>
                    TransactionTile(_.historyItems[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
