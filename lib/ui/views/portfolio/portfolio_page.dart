import 'package:antares_wallet/ui/views/portfolio/portfolio_history_view.dart';
import 'package:antares_wallet/ui/views/widgets/nothing_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PortfolioPage extends StatefulWidget {
  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
                header: 'No assets here yet',
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
