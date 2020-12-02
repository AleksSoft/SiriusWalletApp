import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/ui/pages/home/home_page.dart';
import 'package:antares_wallet/ui/pages/markets/markets_page.dart';
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
//    final styleSel = Get.textTheme.caption.copyWith(color: AppColors.accent);
//    final style = Get.textTheme.caption.copyWith(color: AppColors.dark);
    return GetX<RootController>(
      builder: (_) {
        return Scaffold(
          body: IndexedStack(
            index: _.pageIndex,
            children: [
              HomePage(),
              PortfolioPage(),
              MarketsPage(),
              OrdersPage(),
              MorePage(),
            ],
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.secondary.withOpacity(0.3),
                  blurRadius: 1,
                )
              ],
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _.pageIndex,
              onTap: (val) => _.pageIndex = val,
              backgroundColor: Get.theme.scaffoldBackgroundColor,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(
                    Icons.home,
                    color: AppColors.accent,
                  ),
                  label: 'home'.tr,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_balance_wallet,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(
                    Icons.account_balance_wallet,
                    color: AppColors.accent,
                  ),
                  label: 'portfolio'.tr,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.import_export,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(
                    Icons.import_export,
                    color: AppColors.accent,
                  ),
                  label: 'markets'.tr,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.check_circle_outline,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(
                    Icons.check_circle_outline,
                    color: AppColors.accent,
                  ),
                  label: 'orders'.tr,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(
                    Icons.menu,
                    color: AppColors.accent,
                  ),
                  label: 'more'.tr,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
