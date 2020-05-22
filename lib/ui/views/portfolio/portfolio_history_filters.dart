import 'package:antares_wallet/business/view_models/portfolio/portfolio_history_view_model.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PortfolioHistoryFiltersView extends StatelessWidget {
  const PortfolioHistoryFiltersView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: PortfolioHistoryFilterAppBarView(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            PortfolioHistoryPeriodFilterView(),
            SizedBox(height: 8.0),
            PortfolioHistoryTransFilterView(),
            SizedBox(height: 8.0),
            PortfolioHistoryAssetFilterView(),
          ],
        ),
      ),
    );
  }
}

class PortfolioHistoryFilterAppBarView
    extends ViewModelWidget<PortfolioHistoryViewModel> {
  const PortfolioHistoryFilterAppBarView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, PortfolioHistoryViewModel model) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: Icon(Icons.close),
        onPressed: () => model.closeFilter(),
      ),
      title: Text('Filters'),
      actions: [
        FlatButton(
          onPressed: () => model.clearFilter(),
          child: Text('Clear'),
        )
      ],
    );
  }
}

class PortfolioHistoryPeriodFilterView
    extends ViewModelWidget<PortfolioHistoryViewModel> {
  const PortfolioHistoryPeriodFilterView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, PortfolioHistoryViewModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Period',
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        Wrap(
          alignment: WrapAlignment.start,
          children: [
            ChoiceChip(
              label: Text('All'),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value) model.periodFilter = PeriodFilter.all;
              },
              selected: model.periodFilter == PeriodFilter.all,
            ),
            ChoiceChip(
              label: Text('1 Day'),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value) model.periodFilter = PeriodFilter.day;
              },
              selected: model.periodFilter == PeriodFilter.day,
            ),
            ChoiceChip(
              label: Text('1 Week'),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value) model.periodFilter = PeriodFilter.week;
              },
              selected: model.periodFilter == PeriodFilter.week,
            ),
            ChoiceChip(
              label: Text('Custom'),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {},
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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Display transactions',
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        Wrap(
          alignment: WrapAlignment.start,
          children: [
            ChoiceChip(
              label: Text('All'),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value) model.transTypeFilter = TransactionType.all;
              },
              selected: model.transTypeFilter == TransactionType.all,
            ),
            ChoiceChip(
              label: Text('Deposit'),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value) model.transTypeFilter = TransactionType.deposit;
              },
              selected: model.transTypeFilter == TransactionType.deposit,
            ),
            ChoiceChip(
              label: Text('Withdraw'),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value) model.transTypeFilter = TransactionType.withdraw;
              },
              selected: model.transTypeFilter == TransactionType.withdraw,
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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Assets',
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        Wrap(
          alignment: WrapAlignment.start,
          children: [
            ChoiceChip(
              label: Text('All'),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {},
              selected: true,
            ),
            ChoiceChip(
              label: Text('Select single'),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {},
              selected: false,
            ),
          ],
        ),
      ],
    );
  }
}
