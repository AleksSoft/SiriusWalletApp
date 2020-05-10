import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sirius/ui/navigation/navigation.dart';
import 'package:sirius/ui/navigation/routes.dart';

class RootView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  @override
  Widget build(BuildContext context) {
    return NestedNavigators(
      items: {
        NestedNavItemKey.home: NestedNavigatorItem(
          initialRoute: Routes.home,
          icon: Icons.home,
          text: "Home",
        ),
        NestedNavItemKey.portfolio: NestedNavigatorItem(
          initialRoute: Routes.portfolio,
          icon: Icons.account_balance_wallet,
          text: "Portfolio",
        ),
        NestedNavItemKey.exchange: NestedNavigatorItem(
          initialRoute: Routes.exchange,
          icon: Icons.import_export,
          text: "Exchange",
        ),
        NestedNavItemKey.orders: NestedNavigatorItem(
          initialRoute: Routes.orders,
          icon: Icons.check_circle_outline,
          text: "Orders",
        ),
        NestedNavItemKey.more: NestedNavigatorItem(
          initialRoute: Routes.more,
          icon: Icons.menu,
          text: "More",
        ),
      },
      generateRoute: Routes.generateRoute,
      initialNavigatorKey: NestedNavItemKey.home,
      buildBottomNavigationItem: (key, item, selected) {
        final color = selected ? Colors.blueAccent : Colors.black;
        return BottomNavigationBarItem(
          icon: Icon(item.icon, color: color),
          title: Text(
            item.text,
            style: Theme.of(context).textTheme.caption.copyWith(color: color),
          ),
        );
      },
      bottomNavigationBarTheme: Theme.of(context).copyWith(
        backgroundColor: Colors.white,
      ),
    );
  }
}
