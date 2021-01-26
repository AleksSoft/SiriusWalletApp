import 'package:antares_wallet/app/core/common/common.dart';
import 'package:antares_wallet/app/presentation/modules/home/home_page.dart';
import 'package:antares_wallet/app/presentation/modules/markets/markets_page.dart';
import 'package:antares_wallet/app/presentation/modules/more/more_page.dart';
import 'package:antares_wallet/app/presentation/modules/orders/orders_page.dart';
import 'package:antares_wallet/app/presentation/modules/portfolio/portfolio_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'root_controller.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<RootController>(
      builder: (_) => AnimatedSwitcher(
        duration: Get.defaultTransitionDuration,
        child: !_.loading.value
            ? Scaffold(
                body: IndexedStack(
                  index: _.pageIndexObs.value,
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
                    currentIndex: _.pageIndexObs.value,
                    onTap: (val) => _.pageIndexObs.value = val,
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home_outlined),
                        label: 'home'.tr,
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.account_balance_wallet_outlined),
                        label: 'portfolio'.tr,
                      ),
                      BottomNavigationBarItem(
                        icon: RotatedBox(
                          quarterTurns: 1,
                          child: Icon(Icons.import_export_outlined),
                        ),
                        label: 'exchange'.tr,
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.check_circle_outline_outlined),
                        label: 'orders'.tr,
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.menu_outlined),
                        label: 'more'.tr,
                      ),
                    ],
                  ),
                ),
              )
            : Container(
                alignment: Alignment.center,
                color: AppColors.scaffoldBkg,
                child: AppUiHelpers.circularProgress,
              ),
      ),
    );
  }
}
