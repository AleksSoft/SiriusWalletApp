import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/presentation/modules/portfolio/portfolio_controller.dart';
import 'package:antares_wallet/app/presentation/widgets/empty_reloading_view.dart';
import 'package:antares_wallet/app/presentation/widgets/transaction_tile.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

class PortfolioHistoryView extends GetView<PortfolioController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        heroTag: 'portfolio-history-filter-fab',
        onPressed: () => Get.toNamed(Routes.PORTFOLIO_HISTORY_FILTER),
        child: Icon(Icons.filter_list),
      ),
      body: GetX<PortfolioController>(
        initState: (state) => SchedulerBinding.instance.addPostFrameCallback(
          (_) => controller.reloadHistory(),
        ),
        builder: (_) {
          return EmptyReloadingView(
            emptyHeader: 'No portfolio history yet',
            emptyMessage: '',
            isEmpty: _.historyItems.isEmpty,
            isLoading: _.loading.value,
            onRefresh: () => controller.reloadHistory(silent: true),
            child: ListView.builder(
              itemCount: _.historyItems.length,
              padding: EdgeInsets.only(
                top: AppSizes.small,
                bottom: AppSizes.medium,
              ),
              itemBuilder: (context, index) => TransactionTile(
                _.historyItems[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
