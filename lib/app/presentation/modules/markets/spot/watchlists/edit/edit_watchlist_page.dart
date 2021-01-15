import 'package:antares_wallet/app/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'edit_watchlist_controller.dart';

class EditWatchlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditWatchlistController>(
      init: EditWatchlistController(),
      builder: (_) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: Text(_.modeEdit ? 'Edit watch list' : 'Create watch list'),
            actions: <Widget>[
              IconButton(
                onPressed: () => _.perform(),
                icon: Icon(Icons.check),
              ),
            ],
          ),
          body: ListView(
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
                  child: TextFormField(
                    controller: _.nameController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: AppSizes.small,
                      ),
                      border: InputBorder.none,
                      hintText: 'Name of watch list',
                    ),
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
                        Tab(text: 'Selected ${_.selectedPairs.length}'),
                      ],
                    ),
                    Container(
                      height: Get.height - 120,
                      child: TabBarView(
                        children: <Widget>[
                          ListView.separated(
                            shrinkWrap: true,
                            itemCount: _.assetPairs.length,
                            itemBuilder: (context, index) {
                              var pair = _.assetPairs[index];
                              return ListTile(
                                onTap: () => _.check(pair),
                                title: Text(pair.name),
                                trailing: Visibility(
                                  visible: _.checked(pair),
                                  child: Icon(
                                    Icons.check,
                                    color: AppColors.accent,
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) => Divider(
                              height: 0.5,
                              indent: AppSizes.medium,
                              endIndent: AppSizes.medium,
                            ),
                          ),
                          ReorderableListView(
                            onReorder: (oldI, newI) => _.onReorder(oldI, newI),
                            children: <Widget>[
                              for (final pair in _.selectedPairs)
                                ListTile(
                                  onTap: () => _.check(pair),
                                  key: ValueKey(pair),
                                  title: Text(pair.name),
                                  trailing: Icon(Icons.reorder),
                                )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
