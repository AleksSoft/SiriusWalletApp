import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'watch_lists_controller.dart';

class WatchListsPage extends StatelessWidget {
  static final String route = '/watch-lists';

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WatchListsController>(
      init: WatchListsController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            leading: CloseButton(),
            title: Text('Watch lists'),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
            ],
          ),
          body: ListView(
            padding: const EdgeInsets.all(AppSizes.medium),
            children: _.items.map((i) => ListTile()).toList(),
          ),
        );
      },
    );
  }
}
