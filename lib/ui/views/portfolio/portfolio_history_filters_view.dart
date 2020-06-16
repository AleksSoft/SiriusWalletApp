import 'package:antares_wallet/app/routers/router.gr.dart';
import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/views/select_asset/select_asset_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:easy_localization/easy_localization.dart';

import 'portfolio_history_view_model.dart';

class PortfolioHistoryFiltersView extends StatelessWidget {
  const PortfolioHistoryFiltersView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PortfolioHistoryViewModel>.nonReactive(
        viewModelBuilder: () => PortfolioHistoryViewModel(),
        builder: (_, model, __) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              leading: IconButton(
                icon: Icon(Icons.close),
                onPressed: () => ExtendedNavigator.ofRouter<Router>().pop(),
              ),
              title: Text('filters'.tr()),
              actions: [
                FlatButton(
                  onPressed: () => model.clearFilter(),
                  child: Text('clear'.tr()),
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    _PortfolioHistoryPeriodFilterView(),
                    SizedBox(height: 8.0),
                    _PortfolioHistoryTransFilterView(),
                    SizedBox(height: 8.0),
                    _PortfolioHistoryAssetFilterView(),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class _PortfolioHistoryPeriodFilterView
    extends ViewModelWidget<PortfolioHistoryViewModel> {
  const _PortfolioHistoryPeriodFilterView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, PortfolioHistoryViewModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'period'.tr(),
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        Wrap(
          alignment: WrapAlignment.start,
          children: [
            ChoiceChip(
              label: Text('all'.tr()),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value) model.updateFilterPeriod(PeriodFilter.all);
              },
              selected: model.filterPeriod == PeriodFilter.all,
            ),
            ChoiceChip(
              label: Text('n_days'.tr(args: ['1'])),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value) model.updateFilterPeriod(PeriodFilter.day);
              },
              selected: model.filterPeriod == PeriodFilter.day,
            ),
            ChoiceChip(
              label: Text('n_weeks'.tr(args: ['1'])),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value) model.updateFilterPeriod(PeriodFilter.week);
              },
              selected: model.filterPeriod == PeriodFilter.week,
            ),
            ChoiceChip(
              label: Text('custom'.tr()),
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
            title: Text('time_from'.tr()),
            trailing: Text(model.filterTimeFromStr),
          ),
          Divider(height: 1.0, indent: 16.0, endIndent: 16.0),
          ListTile(
            dense: true,
            title: Text('time_to'.tr()),
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

class _PortfolioHistoryTransFilterView
    extends ViewModelWidget<PortfolioHistoryViewModel> {
  const _PortfolioHistoryTransFilterView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, PortfolioHistoryViewModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'display_trans'.tr(),
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        Wrap(
          alignment: WrapAlignment.start,
          children: [
            ChoiceChip(
              label: Text('all'.tr()),
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
              label: Text('deposit'.tr()),
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
              label: Text('withdraw'.tr()),
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

class _PortfolioHistoryAssetFilterView
    extends ViewModelWidget<PortfolioHistoryViewModel> {
  const _PortfolioHistoryAssetFilterView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, PortfolioHistoryViewModel model) {
    bool allSelected = model.filterAsset == null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'assets'.tr(),
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        Wrap(
          alignment: WrapAlignment.start,
          children: [
            ChoiceChip(
              label: Text('all'.tr()),
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
                final asset =
                    await ExtendedNavigator.ofRouter<Router>().pushNamed(
                  Routes.selectAssetRoute,
                  arguments: SelectAssetViewArguments(
                    args: SelectAssetArgs(
                      title: 'select_asset'.tr(),
                      selectedAsset: model.filterAsset,
                    ),
                  ),
                );
                model.updateFilterAsset(asset);
              },
              selected: !allSelected,
            ),
          ],
        ),
      ],
    );
  }

  Widget _getSingleAssetButtonTitle(AssetData asset) {
    return Text(asset == null ? 'select_single'.tr() : asset.symbol);
  }
}
