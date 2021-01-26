import 'package:antares_wallet/app/core/common/common.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/presentation/modules/markets/spot/watchlists/watchlists_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WatchListsPage extends GetView<WatchListsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CloseButton(),
        title: Text('Watch lists'),
        actions: <Widget>[
          IconButton(
            onPressed: () => controller.create(),
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          RefreshIndicator(
            color: AppColors.dark,
            onRefresh: () => controller.getWatchlists(),
            child: Obx(
              () => ListView.separated(
                itemCount: controller.watchLists.length,
                itemBuilder: (context, index) {
                  var item = controller.watchLists[index];
                  return ListTile(
                    onTap: () => controller
                        .select(item.id)
                        .whenComplete(() => Get.back()),
                    leading: Container(
                      width: AppSizes.extraLarge,
                      alignment: Alignment.center,
                      child: Visibility(
                        visible: item.id == controller.selected.id,
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
              visible: controller.loading.value,
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
              children: WatchListsController.con
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
