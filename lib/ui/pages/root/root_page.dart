import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/ui/pages/exchange/exchange_page.dart';
import 'package:antares_wallet/ui/pages/home/home_page.dart';
import 'package:antares_wallet/ui/pages/more/more_page.dart';
import 'package:antares_wallet/ui/pages/orders/orders_page.dart';
import 'package:antares_wallet/ui/pages/portfolio/portfolio_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'root_controller.dart';

class RootPage extends StatelessWidget {
  static final String route = '/root';

  @override
  Widget build(BuildContext context) {
    final styleSel = Get.textTheme.caption.copyWith(color: AppColors.accent);
    final style = Get.textTheme.caption.copyWith(color: AppColors.dark);
    return GetBuilder<RootController>(
      init: RootController(),
      builder: (_) {
        return Scaffold(
          body: IndexedStack(
            index: _.currentIndex,
            children: [
              HomePage(),
              PortfolioPage(),
              ExchangePage(),
              OrdersPage(),
              MorePage(),
            ],
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: AppColors.secondary, blurRadius: 8)],
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _.currentIndex,
              onTap: (val) => _.updatePage(val),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.black),
                  activeIcon: Icon(Icons.home, color: AppColors.accent),
                  title: Text(
                    'home'.tr,
                    style: _.isSelected(0) ? styleSel : style,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance_wallet, color: Colors.black),
                  activeIcon: Icon(Icons.account_balance_wallet,
                      color: AppColors.accent),
                  title: Text(
                    'portfolio'.tr,
                    style: _.isSelected(1) ? styleSel : style,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.import_export, color: Colors.black),
                  activeIcon:
                      Icon(Icons.import_export, color: AppColors.accent),
                  title: Text(
                    'exchange'.tr,
                    style: _.isSelected(2) ? styleSel : style,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.check_circle_outline, color: Colors.black),
                  activeIcon:
                      Icon(Icons.check_circle_outline, color: AppColors.accent),
                  title: Text(
                    'orders'.tr,
                    style: _.isSelected(3) ? styleSel : style,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu, color: Colors.black),
                  activeIcon: Icon(Icons.menu, color: AppColors.accent),
                  title: Text(
                    'more'.tr,
                    style: _.isSelected(4) ? styleSel : style,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
