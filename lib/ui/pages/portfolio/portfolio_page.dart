import 'package:antares_wallet/ui/pages/portfolio/portfolio_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'assets/portfolio_assets_view.dart';
import 'history/portfolio_history_view.dart';
import 'package:get/get.dart';

class PortfolioPage extends StatelessWidget {
  static final String route = '/portfolio';

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PortfolioController>(
        init: PortfolioController(),
        builder: (_) {
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                title: Text('portfolio'.tr),
                bottom: TabBar(
                  indicatorWeight: 1.0,
                  indicatorColor: Colors.black,
                  tabs: <Widget>[
                    Tab(text: 'assets'.tr),
                    Tab(text: 'history'.tr),
                  ],
                ),
              ),
              body: TabBarView(
                children: <Widget>[
                  PortfolioAssetsTabView(),
                  PortfolioHistoryView(),
                ],
              ),
            ),
          );
        });
  }
}