import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/common/common.dart';
import 'package:antares_wallet/controllers/watchlists_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WatchlistsPage extends StatelessWidget {
  static final String route = '/watchlists';
  final c = WatchlistsController.con;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CloseButton(),
        title: Text('Watch lists'),
        actions: <Widget>[
          IconButton(
            onPressed: () => c.create(),
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          RefreshIndicator(
            color: AppColors.dark,
            onRefresh: () => c.getWatchlists(),
            child: Obx(
              () => ListView.separated(
                itemCount: c.watchlists.length,
                itemBuilder: (context, index) {
                  var item = c.watchlists[index];
                  return ListTile(
                    onTap: () =>
                        c.select(item.id).whenComplete(() => Get.back()),
                    leading: Container(
                      width: AppSizes.extraLarge,
                      alignment: Alignment.center,
                      child: Visibility(
                        visible: item.id == c.selected.id,
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
          ),
          Obx(
            () => Visibility(
              visible: c.loading,
              child: Container(
                alignment: Alignment.center,
                child: AppUiHelpers.circularProgress,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _showOptions(Watchlist watchlist) {
    Get.bottomSheet(
      SizedBox(
        height: 250.0,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(watchlist.name),
          ),
          body: Obx(
            () => ListView(
              children: WatchlistsController.con
                  .options(watchlist)
                  .map((e) => ListTile(
                        onTap: () {
                          Get.back();
                          e.action();
                        },
                        title: Text(e.name),
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
