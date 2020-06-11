import 'package:antares_wallet/business/models/asset_dictionary_data.dart';
import 'package:antares_wallet/business/view_models/portfolio/portfolio_history_view_model.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/navigation/navigation.dart';
import 'package:antares_wallet/ui/views/select_asset_view.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:stacked/stacked.dart';

class PortfolioHistoryFiltersView extends StatelessWidget {
  final PanelController _panelController;
  const PortfolioHistoryFiltersView(this._panelController, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: PortfolioHistoryFilterAppBarView(_panelController),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
      ),
    );
  }
}

class PortfolioHistoryFilterAppBarView
    extends ViewModelWidget<PortfolioHistoryViewModel> {
  final PanelController _panelController;
  const PortfolioHistoryFilterAppBarView(this._panelController, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context, PortfolioHistoryViewModel model) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: Icon(Icons.close),
        onPressed: () => _panelController.close(),
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
                if (value) model.updateFilterPeriod(PeriodFilter.all);
              },
              selected: model.filterPeriod == PeriodFilter.all,
            ),
            ChoiceChip(
              label: Text('1 Day'),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value) model.updateFilterPeriod(PeriodFilter.day);
              },
              selected: model.filterPeriod == PeriodFilter.day,
            ),
            ChoiceChip(
              label: Text('1 Week'),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value) model.updateFilterPeriod(PeriodFilter.week);
              },
              selected: model.filterPeriod == PeriodFilter.week,
            ),
            ChoiceChip(
              label: Text('Custom'),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value) model.updateFilterPeriod(PeriodFilter.custom);
              },
              selected: model.filterPeriod == PeriodFilter.custom,
            ),
          ],
        ),
        AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          switchInCurve: Curves.easeInCubic,
          switchOutCurve: Curves.easeOutCubic,
          child: model.filterPeriod == PeriodFilter.custom
              ? _buildCustomPeriodView(context, model)
              : SizedBox.shrink(),
        ),
      ],
    );
  }

  Widget _buildCustomPeriodView(
    BuildContext context,
    PortfolioHistoryViewModel model,
  ) {
    return GestureDetector(
      onTap: () => _selectDate(context, model),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            dense: true,
            title: Text('Time from:'),
            trailing: Text(model.filterTimeFromStr),
          ),
          Divider(height: 1.0, indent: 16.0, endIndent: 16.0),
          ListTile(
            dense: true,
            title: Text('Time to:'),
            trailing: Text(model.filterTimeToStr),
          ),
        ],
      ),
    );
  }

  Future _selectDate(
    BuildContext context,
    PortfolioHistoryViewModel model,
  ) async {
    final List<DateTime> picked = await DateRagePicker.showDatePicker(
      context: context,
      initialFirstDate: DateTime.fromMillisecondsSinceEpoch(
        model.filterTimeFrom,
      ),
      initialLastDate: DateTime.fromMillisecondsSinceEpoch(
        model.filterTimeTo,
      ),
      firstDate: DateTime(2016),
      lastDate: DateTime.fromMillisecondsSinceEpoch(model.filterTimeTo),
    );
    if (picked != null && picked.length == 2) {
      model.updateCustomTimeFrom(picked[0].millisecondsSinceEpoch);
      model.updateCustomTimeTo(picked[1].millisecondsSinceEpoch);
    }
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
                if (value)
                  model.updateFilterTransType(TransactionTypeFilter.all);
              },
              selected:
                  model.filterTransactionType == TransactionTypeFilter.all,
            ),
            ChoiceChip(
              label: Text('Deposit'),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value)
                  model.updateFilterTransType(TransactionTypeFilter.deposit);
              },
              selected:
                  model.filterTransactionType == TransactionTypeFilter.deposit,
            ),
            ChoiceChip(
              label: Text('Withdraw'),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value)
                  model.updateFilterTransType(TransactionTypeFilter.withdraw);
              },
              selected:
                  model.filterTransactionType == TransactionTypeFilter.withdraw,
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
    bool allSelected = model.filterAsset == null;
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
              onSelected: (value) {
                if (value) model.updateFilterAsset(null);
              },
              selected: allSelected,
            ),
            ChoiceChip(
              label: _getSingleAssetButtonTitle(model.filterAsset),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) async {
                if (value) {
                  final asset = await Navigator.of(context).pushNamed(
                    Routes.selectAsset,
                    arguments: SelectAssetArgs(
                      title: 'Select asset',
                      selectedAsset: model.filterAsset,
                    ),
                  );
                  model.updateFilterAsset(asset);
                }
              },
              selected: !allSelected,
            ),
          ],
        ),
      ],
    );
  }

  Widget _getSingleAssetButtonTitle(AssetData asset) {
    return Text(asset == null ? 'Select single' : asset.symbol);
  }
}
