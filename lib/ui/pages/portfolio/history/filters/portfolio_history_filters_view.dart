import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/services/repositories/portfolio_history_repository.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'portfolio_history_filters_controller.dart';

class PortfolioHistoryFiltersView extends StatelessWidget {
  const PortfolioHistoryFiltersView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PortfolioHistoryFiltersController>(
        init: PortfolioHistoryFiltersController(),
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              leading: IconButton(
                icon: Icon(Icons.close),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text('filters'.tr),
              actions: [
                FlatButton(
                  onPressed: () => _.clearFilter(),
                  child: Text('clear'.tr),
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.medium),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    _PortfolioHistoryPeriodFilterView(),
                    AppUiHelpers.vSpaceSmall,
                    _PortfolioHistoryTransFilterView(),
                    AppUiHelpers.vSpaceSmall,
                    _PortfolioHistoryAssetFilterView(),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class _PortfolioHistoryPeriodFilterView extends StatelessWidget {
  final c = PortfolioHistoryFiltersController.con;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'period'.tr,
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        Wrap(
          alignment: WrapAlignment.start,
          children: [
            ChoiceChip(
              label: Text('all'.tr),
              padding: EdgeInsets.symmetric(horizontal: AppSizes.small),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value) c.updateFilterPeriod(PeriodFilter.all);
              },
              selected: c.filterPeriod == PeriodFilter.all,
            ),
            ChoiceChip(
              label: Text('n_days'.trArgs(['1'])),
              padding: EdgeInsets.symmetric(horizontal: AppSizes.small),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value) c.updateFilterPeriod(PeriodFilter.day);
              },
              selected: c.filterPeriod == PeriodFilter.day,
            ),
            ChoiceChip(
              label: Text('n_weeks'.trArgs(['1'])),
              padding: EdgeInsets.symmetric(horizontal: AppSizes.small),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value) c.updateFilterPeriod(PeriodFilter.week);
              },
              selected: c.filterPeriod == PeriodFilter.week,
            ),
            ChoiceChip(
              label: Text('custom'.tr),
              padding: EdgeInsets.symmetric(horizontal: AppSizes.small),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value) c.updateFilterPeriod(PeriodFilter.custom);
              },
              selected: c.filterPeriod == PeriodFilter.custom,
            ),
          ],
        ),
        AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          switchInCurve: Curves.easeInCubic,
          switchOutCurve: Curves.easeOutCubic,
          child: c.filterPeriod == PeriodFilter.custom
              ? _buildCustomPeriodView()
              : SizedBox.shrink(),
        ),
      ],
    );
  }

  Widget _buildCustomPeriodView() {
    return GestureDetector(
      onTap: () => _selectDate(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            dense: true,
            title: Text('time_from'.tr),
            trailing: Text(c.filterTimeFromStr),
          ),
          Divider(
            height: 1.0,
            indent: AppSizes.medium,
            endIndent: AppSizes.medium,
          ),
          ListTile(
            dense: true,
            title: Text('time_to'.tr),
            trailing: Text(c.filterTimeToStr),
          ),
        ],
      ),
    );
  }

  Future _selectDate() async {
    final List<DateTime> picked = await DateRagePicker.showDatePicker(
      context: Get.context,
      initialFirstDate: DateTime.fromMillisecondsSinceEpoch(
        c.filterTimeFrom,
      ),
      initialLastDate: DateTime.fromMillisecondsSinceEpoch(
        c.filterTimeTo,
      ),
      firstDate: DateTime(2016),
      lastDate: DateTime.fromMillisecondsSinceEpoch(c.filterTimeTo),
    );
    if (picked != null && picked.length == 2) {
      c.updateCustomTimeFrom(picked[0].millisecondsSinceEpoch);
      c.updateCustomTimeTo(picked[1].millisecondsSinceEpoch);
    }
  }
}

class _PortfolioHistoryTransFilterView extends StatelessWidget {
  final c = PortfolioHistoryFiltersController.con;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'display_trans'.tr,
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        Wrap(
          alignment: WrapAlignment.start,
          children: [
            ChoiceChip(
              label: Text('all'.tr),
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.small),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value) c.updateFilterTransType(TransactionTypeFilter.all);
              },
              selected: c.filterTransactionType == TransactionTypeFilter.all,
            ),
            ChoiceChip(
              label: Text('deposit'.tr),
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.small),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value)
                  c.updateFilterTransType(TransactionTypeFilter.deposit);
              },
              selected:
                  c.filterTransactionType == TransactionTypeFilter.deposit,
            ),
            ChoiceChip(
              label: Text('withdraw'.tr),
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.small),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value)
                  c.updateFilterTransType(TransactionTypeFilter.withdraw);
              },
              selected:
                  c.filterTransactionType == TransactionTypeFilter.withdraw,
            ),
          ],
        ),
      ],
    );
  }
}

class _PortfolioHistoryAssetFilterView extends StatelessWidget {
  final c = PortfolioHistoryFiltersController.con;
  @override
  Widget build(BuildContext context) {
    bool allSelected = c.filterAsset == null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'assets'.tr,
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        Wrap(
          alignment: WrapAlignment.start,
          children: [
            ChoiceChip(
              label: Text('all'.tr),
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.small),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) {
                if (value) c.updateFilterAsset(null);
              },
              selected: allSelected,
            ),
            ChoiceChip(
              label: _getSingleAssetButtonTitle(c.filterAsset),
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.small),
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.accent,
              onSelected: (value) async {
                // TODO: finish refactoring nav to selectassetview
                // final asset = Get.toNamed(
                //   AppRoutes.selectAssetRoute,
                //   arguments: SelectAssetArgs(
                //     title: 'select_asset'.tr,
                //     selectedAsset: c.filterAsset,
                //   ),
                // );
                // c.updateFilterAsset(asset as AssetData);
              },
              selected: !allSelected,
            ),
          ],
        ),
      ],
    );
  }

  Widget _getSingleAssetButtonTitle(AssetData asset) {
    return Text(asset == null ? 'select_single'.tr : asset.symbol);
  }
}
