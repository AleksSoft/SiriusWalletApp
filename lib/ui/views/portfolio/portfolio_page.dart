import 'package:antares_wallet/ui/views/portfolio/portfolio_history_view.dart';
import 'package:antares_wallet/ui/views/widgets/nothing_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('Portfolio'),
          bottom: TabBar(
            indicatorWeight: 1.0,
            indicatorColor: Colors.black,
            tabs: <Widget>[
              Tab(text: 'Assets'),
              Tab(text: 'History'),
            ],
          ),
          elevation: 0.5,
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: NothingView(
                header: 'No assets her yet',
                message: 'Your assets will appear here.',
              ),
            ),
            PortfolioHistoryView(),
          ],
        ),
      ),
    );
  }
}
