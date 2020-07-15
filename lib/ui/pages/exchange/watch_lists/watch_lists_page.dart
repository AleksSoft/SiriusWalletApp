import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
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
                onPressed: () => _.create(),
                icon: Icon(Icons.add),
              ),
            ],
          ),
          body: RefreshIndicator(
            onRefresh: () => _.updateWatchlists(),
            child: ListView.separated(
              itemCount: _.items.length,
              itemBuilder: (context, index) {
                var item = _.items[index];
                return ListTile(
                  onTap: () => _.select(item.id),
                  leading: Container(
                    width: AppSizes.extraLarge,
                    alignment: Alignment.center,
                    child: Visibility(
                      visible: item.id == _.selected.id,
                      child: Icon(Icons.check, color: AppColors.accent),
                    ),
                  ),
                  title: Text(
                    item.name,
                    style: Get.textTheme.button.copyWith(
                      fontSize: 16.0,
                      fontWeight:
                          item.readonly ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () => _showOptions(item),
                    icon: Icon(Icons.more_vert),
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(
                height: 0.5,
                indent: AppSizes.medium,
                endIndent: AppSizes.medium,
              ),
            ),
          ),
        );
      },
    );
  }

  _showOptions(Watchlist watchlist) {
    Get.bottomSheet(GetBuilder<WatchListsController>(
      builder: (_) {
        return SizedBox(
          height: 250.0,
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Text(watchlist.name),
            ),
            body: ListView(
              children: _
                  .options(watchlist)
                  .map((e) => ListTile(onTap: e.action, title: Text(e.name)))
                  .toList(),
            ),
          ),
        );
      },
    ));
  }
}
