import 'package:antares_wallet/app/routers/exchange_nested_router.gr.dart';
import 'package:antares_wallet/app/routers/more_nested_router.gr.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/views/home/home_view.dart';
import 'package:antares_wallet/ui/views/orders/orders_view.dart';
import 'package:antares_wallet/ui/views/portfolio/portfolio_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'root_view_model.dart';

class RootView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyleSelected = Theme.of(context).textTheme.caption.copyWith(
          color: AppColors.accent,
        );
    final textStyle = Theme.of(context).textTheme.caption.copyWith(
          color: AppColors.dark,
        );
    return ViewModelBuilder<RootViewModel>.reactive(
      viewModelBuilder: () => RootViewModel(),
      builder: (_, model, __) {
        return Scaffold(
          body: IndexedStack(
            index: model.currentIndex,
            children: [
              HomeView(),
              PortfolioView(),
              ExtendedNavigator<ExchangeNestedRouter>(
                router: ExchangeNestedRouter(),
              ),
              OrdersView(),
              ExtendedNavigator<MoreNestedRouter>(
                router: MoreNestedRouter(),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: model.currentIndex,
            onTap: (val) => model.updatePage(val),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.black),
                activeIcon: Icon(Icons.home, color: AppColors.accent),
                title: Text(
                  'home'.tr(),
                  style: model.isSelected(0) ? textStyleSelected : textStyle,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet, color: Colors.black),
                activeIcon:
                    Icon(Icons.account_balance_wallet, color: AppColors.accent),
                title: Text(
                  'portfolio'.tr(),
                  style: model.isSelected(1) ? textStyleSelected : textStyle,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.import_export, color: Colors.black),
                activeIcon: Icon(Icons.import_export, color: AppColors.accent),
                title: Text(
                  'exchange'.tr(),
                  style: model.isSelected(2) ? textStyleSelected : textStyle,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.check_circle_outline, color: Colors.black),
                activeIcon:
                    Icon(Icons.check_circle_outline, color: AppColors.accent),
                title: Text(
                  'orders'.tr(),
                  style: model.isSelected(3) ? textStyleSelected : textStyle,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu, color: Colors.black),
                activeIcon: Icon(Icons.menu, color: AppColors.accent),
                title: Text(
                  'more'.tr(),
                  style: model.isSelected(4) ? textStyleSelected : textStyle,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
