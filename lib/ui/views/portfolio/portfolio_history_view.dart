import 'package:antares_wallet/business/dto/portfolio_history_item.dart';
import 'package:antares_wallet/business/view_models/portfolio/portfolio_history_view_model.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/navigation/navigation.dart';
import 'package:antares_wallet/ui/views/portfolio/portfolio_history_filters_view.dart';
import 'package:antares_wallet/ui/views/widgets/nothing_view.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:stacked/stacked.dart';

class PortfolioHistoryView extends StatelessWidget {
  final PanelController _panelController = PanelController();

  PortfolioHistoryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => PortfolioHistoryViewModel(
        onCloseFilter: () => _panelController.close(),
        onOpenFilter: () => _panelController.open(),
      ),
      disposeViewModel: false,
      onModelReady: (PortfolioHistoryViewModel model) async {
        await model.initialise();
      },
      builder: (context, PortfolioHistoryViewModel model, child) {
        return AnimatedSwitcher(
          switchInCurve: Curves.easeInCubic,
          switchOutCurve: Curves.easeOutCubic,
          duration: Duration(milliseconds: 300),
          child: model.isBusy
              ? Center(child: CircularProgressIndicator())
              : AnimatedSwitcher(
                  switchInCurve: Curves.easeInCubic,
                  switchOutCurve: Curves.easeOutCubic,
                  duration: Duration(milliseconds: 300),
                  child: model.itemsEmpty
                      ? Center(
                          child: NothingView(
                            header: 'No history yet',
                            message: 'Your history will appear here.',
                          ),
                        )
                      : Scaffold(
                          body: Stack(
                            children: [
                              RefreshIndicator(
                                displacement: 20.0,
                                onRefresh: () async =>
                                    await model.updateHistory(),
                                child: ListView.builder(
                                  itemCount: model.historyItems.length,
                                  padding: EdgeInsets.only(
                                    top: 8.0,
                                    bottom: 16.0,
                                  ),
                                  itemBuilder: (context, index) {
                                    return PortfolioHistoryListTile(
                                      index: index,
                                    );
                                  },
                                ),
                              ),
                              SlidingUpPanel(
                                panel: PortfolioHistoryFiltersView(),
                                controller: _panelController,
                                minHeight: 0,
                                maxHeight: 350,
                                backdropEnabled: true,
                                onPanelClosed: () =>
                                    model.updateFilterOpenedState(false),
                                onPanelOpened: () =>
                                    model.updateFilterOpenedState(true),
                              ),
                            ],
                          ),
                          floatingActionButton: FloatingActionButton(
                            onPressed: () => model.filterOpened
                                ? model.onCloseFilter()
                                : model.onOpenFilter(),
                            child: Icon(model.filterOpened
                                ? Icons.check
                                : Icons.filter_list),
                          ),
                        ),
                ),
        );
      },
    );
  }
}

class PortfolioHistoryListTile
    extends ViewModelWidget<PortfolioHistoryViewModel> {
  final int index;
  const PortfolioHistoryListTile({
    Key key,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, PortfolioHistoryViewModel model) {
    final PortfolioHistoryItem item = model.historyItems[index];

    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
        Routes.historyDetails,
        arguments: item,
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          item.asset.symbol,
                          style: Theme.of(context).textTheme.button.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.0,
                              ),
                        ),
                        SizedBox(width: 4.0),
                        Text(
                          item.isDeposit ? 'DEPOSIT' : 'WITHDRAW',
                          style: Theme.of(context).textTheme.button.copyWith(
                                color: item.isDeposit
                                    ? AppColors.green
                                    : AppColors.red,
                                fontWeight: FontWeight.w700,
                                fontSize: 10.0,
                              ),
                        ),
                        SizedBox(width: 16.0),
                        Text(
                          item.amount.toString(),
                          style: Theme.of(context).textTheme.button.copyWith(
                                fontSize: 16.0,
                              ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      item.dateTime,
                      style: Theme.of(context).textTheme.caption.copyWith(
                            fontSize: 14.0,
                          ),
                    ),
                  ],
                ),
                Text(
                  item.status,
                  style: Theme.of(context).textTheme.caption.copyWith(
                        color: AppColors.secondary.withOpacity(0.8),
                        fontSize: 14.0,
                      ),
                ),
              ],
            ),
          ),
          Divider(height: 1.0, color: AppColors.secondary.withOpacity(0.2)),
        ],
      ),
    );
  }
}
