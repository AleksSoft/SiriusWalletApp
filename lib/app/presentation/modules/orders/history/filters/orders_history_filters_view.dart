import 'package:antares_wallet/app/common/common.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'orders_history_filters_controller.dart';

class OrdersHistoryFiltersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrdersHistoryFiltersController>(
        init: OrdersHistoryFiltersController(),
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
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(AppSizes.medium),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        _PortfolioHistoryPeriodFilterView(),
                        AppUiHelpers.vSpaceMedium,
                        _PortfolioHistoryTransFilterView(),
                        AppUiHelpers.vSpaceMedium,
                        _PortfolioHistoryAssetFilterView(),
                        AppUiHelpers.vSpaceExtraLarge,
                        AppUiHelpers.vSpaceExtraLarge,
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: AppSizes.medium,
                  right: AppSizes.medium,
                  bottom: AppSizes.small,
                  child: CupertinoButton.filled(
                    onPressed: () async => await _.applyFilter(),
                    child: Text('apply'.tr),
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class _PortfolioHistoryPeriodFilterView extends StatelessWidget {
  final c = OrdersHistoryFiltersController.con;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'period'.tr,
          style: Get.textTheme.headline6.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        ChipsChoice<OrdersPeriod>.single(
          value: c.period,
          itemConfig: ChipsChoiceItemConfig(
            selectedColor: AppColors.accent,
            unselectedColor: AppColors.secondary,
            showCheckmark: false,
            elevation: 3.0,
            unselectedBorderOpacity: 0.0,
          ),
          options: ChipsChoiceOption.listFrom<OrdersPeriod, String>(
            source:
                OrdersPeriod.values.map((e) => c.getPeriodTitle(e)).toList(),
            value: (i, v) => OrdersPeriod.values[i],
            label: (i, v) => v,
          ),
          onChanged: (val) => c.period = val,
        ),
        AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          switchInCurve: Curves.easeInCubic,
          switchOutCurve: Curves.easeOutCubic,
          child: c.period == OrdersPeriod.custom
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
            trailing: Text(c.timeFromStr),
          ),
          Divider(
            height: 1.0,
            indent: AppSizes.medium,
            endIndent: AppSizes.medium,
          ),
          ListTile(
            dense: true,
            title: Text('time_to'.tr),
            trailing: Text(c.timeToStr),
          ),
        ],
      ),
    );
  }

  Future _selectDate() async {
    var dateTimeFrom = DateTime.fromMillisecondsSinceEpoch(c.timeFrom);
    var dateTimeTo = DateTime.fromMillisecondsSinceEpoch(c.timeTo);
    final List<DateTime> picked = await DateRagePicker.showDatePicker(
      context: Get.overlayContext,
      initialFirstDate: dateTimeFrom,
      initialLastDate: dateTimeTo,
      firstDate: DateTime(2016),
      lastDate: dateTimeTo,
    );
    if (picked != null && picked.length == 2) {
      c.timeFrom = picked[0].millisecondsSinceEpoch;
      c.timeTo = picked[1].millisecondsSinceEpoch;
      c.update();
    }
  }
}

class _PortfolioHistoryTransFilterView extends StatelessWidget {
  final c = OrdersHistoryFiltersController.con;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'display_transactions'.tr,
          style: Get.textTheme.headline6.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        ChipsChoice<OrdersTransactionType>.single(
          value: c.transactionType,
          itemConfig: ChipsChoiceItemConfig(
            selectedColor: AppColors.accent,
            unselectedColor: AppColors.secondary,
            showCheckmark: false,
            elevation: 3.0,
            unselectedBorderOpacity: 0.0,
          ),
          options: ChipsChoiceOption.listFrom<OrdersTransactionType, String>(
            source: OrdersTransactionType.values
                .map((e) => c.getTypeTitle(e))
                .toList(),
            value: (i, v) => OrdersTransactionType.values[i],
            label: (i, v) => v,
          ),
          onChanged: (val) => c.transactionType = val,
        ),
      ],
    );
  }
}

class _PortfolioHistoryAssetFilterView extends StatelessWidget {
  final c = OrdersHistoryFiltersController.con;
  @override
  Widget build(BuildContext context) {
    bool allSelected = c.marketModel == null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'assets'.tr,
          style: Get.textTheme.headline6.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        ListTile(
          onTap: () => c.marketModel = null,
          title: Text('all'.tr),
          trailing: Visibility(
            visible: allSelected,
            child: Icon(Icons.check_circle_outline, color: AppColors.accent),
          ),
        ),
        ListTile(
          onTap: () => c.updateFilterAssetPair(),
          title: Text(
            allSelected
                ? 'select_single'.tr
                : '${c.marketModel.pairBaseAsset.displayId}/${c.marketModel.pairQuotingAsset.displayId}',
          ),
          subtitle: allSelected ? null : Text('select_single'.tr),
          trailing: Visibility(
            visible: !allSelected,
            child: Icon(Icons.check_circle_outline, color: AppColors.accent),
          ),
        ),
      ],
    );
  }
}
