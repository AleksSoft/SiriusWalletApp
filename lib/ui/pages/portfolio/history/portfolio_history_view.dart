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
      floatingActionButton: Obx(
        () => AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          child: c.historyItems.isNotEmpty
              ? FloatingActionButton(
                  onPressed: () =>
                      Get.bottomSheet(PortfolioHistoryFiltersView()),
                  child: Icon(Icons.filter_list),
                )
              : SizedBox.shrink(),
        ),
      ),
      body: RefreshIndicator(
        color: AppColors.dark,
        onRefresh: () => c.getFunds(10, 0),
        child: GetX<PortfolioController>(
          initState: (state) => c.getFunds(10, 0),
          builder: (_) {
            return EmptyView(
              header: 'No protfolio history yet',
              message: '',
              condition: _.historyItems.isEmpty,
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
