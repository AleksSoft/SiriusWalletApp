import 'package:flutter/material.dart';
import 'package:sirius/ui/common/widgets/nothing_view.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            Center(
              child: NothingView(
                header: 'No history yet',
                message: 'Your history will appear here.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
