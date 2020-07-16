import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'edit_watchlist_controller.dart';

class EditWatchlistPage extends StatelessWidget {
  static final String route = '/edit-watchlist';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: Text('Edit watch list')),
      body: GetBuilder<EditWatchlistController>(
        init: EditWatchlistController(),
        builder: (_) {
          return ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: AppSizes.medium,
                  left: AppSizes.medium,
                  right: AppSizes.medium,
                ),
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: AppColors.secondary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(AppSizes.extraSmall),
                  ),
                  child: TextField(
                    controller: _.nameController,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.small,
                        ),
                        border: InputBorder.none,
                        hintText: 'Name of watch list'),
                  ),
                ),
              ),
              DefaultTabController(
                length: 2,
                child: Column(
                  children: <Widget>[
                    TabBar(
                      indicatorWeight: 1.0,
                      indicatorColor: Colors.black,
                      tabs: <Widget>[
                        Tab(text: 'All assets'),
                        Tab(text: 'Selected ${_.assetIds.length}'),
                      ],
                    ),
                    Container(
                      height: Get.height - 120,
                      child: TabBarView(
                        children: <Widget>[
                          Container(),
                          Container(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
