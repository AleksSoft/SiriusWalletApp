import 'package:flutter/material.dart';
import 'package:sirius/ui/widgets/nothing_view.dart';

class OrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Orders'),
          bottom: TabBar(
            indicatorWeight: 1.0,
            indicatorColor: Colors.black,
            tabs: <Widget>[
              Tab(text: 'Opened'),
              Tab(text: 'History'),
            ],
          ),
          elevation: 0.5,
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: NothingView(
                header: 'No open orders yet',
                message: 'Your orders will appear here once placed.',
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
