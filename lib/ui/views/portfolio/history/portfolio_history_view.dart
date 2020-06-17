import 'package:antares_wallet/app/routers/portfolio_nested_router.gr.dart';
import 'package:antares_wallet/models/portfolio_history_item.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:auto_route/auto_route.dart';
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
      onModelReady: (model) => model.initialise(),
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
      displacement: 20.0,
      onRefresh: () => model.updateHistory(),
      child: ListView.builder(
        itemCount: model.historyItems.length,
        padding: EdgeInsets.only(
          top: 8.0,
          bottom: 16.0,
        ),
        itemBuilder: (context, index) {
          return _PortfolioHistoryListTile(
            model.historyItems[index],
          );
        },
      ),
    );
  }
}

class _PortfolioHistoryListTile extends StatelessWidget {
  final PortfolioHistoryItem _item;
  const _PortfolioHistoryListTile(this._item, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          ExtendedNavigator.ofRouter<PortfolioNestedRouter>().pushNamed(
        Routes.transactionDetailsRoute,
        arguments: TransactionDetailsViewArguments(details: _item),
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
                          _item.asset.symbol,
                          style: Theme.of(context).textTheme.button.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.0,
                              ),
                        ),
                        SizedBox(width: 4.0),
                        Text(
                          _item.isDeposit ? 'DEPOSIT' : 'WITHDRAW',
                          style: Theme.of(context).textTheme.button.copyWith(
                                color: _item.isDeposit
                                    ? AppColors.green
                                    : AppColors.red,
                                fontWeight: FontWeight.w700,
                                fontSize: 10.0,
                              ),
                        ),
                        SizedBox(width: 16.0),
                        Text(
                          _item.amount.toString(),
                          style: Theme.of(context).textTheme.button.copyWith(
                                fontSize: 16.0,
                              ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      _item.dateTime,
                      style: Theme.of(context).textTheme.caption.copyWith(
                            fontSize: 14.0,
                          ),
                    ),
                  ],
                ),
                Text(
                  _item.status,
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
