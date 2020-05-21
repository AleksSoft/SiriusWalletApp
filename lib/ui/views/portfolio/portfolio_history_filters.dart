import 'package:antares_wallet/business/view_models/portfolio/portfolio_history_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PortfolioHistoryFiltersView extends StatelessWidget {
  const PortfolioHistoryFiltersView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          PortfolioHistoryPeriodFilterView(),
          PortfolioHistoryTransFilterView(),
          PortfolioHistoryAssetFilterView(),
          Spacer(),
          CupertinoButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Apply'),
          ),
        ],
      ),
    );
  }
}

class PortfolioHistoryPeriodFilterView
    extends ViewModelWidget<PortfolioHistoryViewModel> {
  const PortfolioHistoryPeriodFilterView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, PortfolioHistoryViewModel model) {
    return Column(
      children: <Widget>[
        Text(
          'Period',
          style: Theme.of(context).textTheme.headline6,
        ),
        Divider(),
        Wrap(
          alignment: WrapAlignment.spaceAround,
          children: [
            ChoiceChip(
              label: Text('All'),
              selected: true,
            ),
            ChoiceChip(
              label: Text('1 Day'),
              selected: false,
            ),
            ChoiceChip(
              label: Text('1 Week'),
              selected: false,
            ),
            ChoiceChip(
              label: Text('Custom'),
              selected: false,
            ),
          ],
        ),
      ],
    );
  }
}

class PortfolioHistoryTransFilterView
    extends ViewModelWidget<PortfolioHistoryViewModel> {
  const PortfolioHistoryTransFilterView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, PortfolioHistoryViewModel model) {
    return Column(
      children: <Widget>[
        Text(
          'Display transactions',
          style: Theme.of(context).textTheme.headline6,
        ),
        Divider(),
        Wrap(
          alignment: WrapAlignment.spaceAround,
          children: [
            ChoiceChip(
              label: Text('All'),
              selected: true,
            ),
            ChoiceChip(
              label: Text('1 Day'),
              selected: false,
            ),
            ChoiceChip(
              label: Text('1 Week'),
              selected: false,
            ),
            ChoiceChip(
              label: Text('Custom'),
              selected: false,
            ),
          ],
        ),
      ],
    );
  }
}

class PortfolioHistoryAssetFilterView
    extends ViewModelWidget<PortfolioHistoryViewModel> {
  const PortfolioHistoryAssetFilterView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, PortfolioHistoryViewModel model) {
    return Column(
      children: <Widget>[
        Text(
          'Assets',
          style: Theme.of(context).textTheme.headline6,
        ),
        Divider(),
      ],
    );
  }
}
