import 'package:flutter/material.dart';

import 'orders_history_view.dart';
import 'orders_opened_view.dart';

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
            OrdersOpenedView(),
            OrdersHistoryView(),
          ],
        ),
      ),
    );
  }
}
