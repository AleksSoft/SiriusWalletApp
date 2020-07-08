import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';

import 'select_asset_controller.dart';

class SelectAssetArgs {
  final String title;
  final AssetData selectedAsset;
  final bool onlyBase;

  const SelectAssetArgs({
    @required this.title,
    this.selectedAsset,
    this.onlyBase = false,
    Key key,
  });
}

class SelectAssetView extends StatelessWidget {
  final SelectAssetArgs args;

  SelectAssetView(this.args);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectAssetController>(
      init: SelectAssetController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(_.title),
            actions: [_SearchButton()],
          ),
          body: ListView.builder(
            itemCount: _.assetList.length,
            itemBuilder: (content, index) {
              var asset = _.assetList[index];
              return _AssetTile(asset, _.selectedAsset == asset);
            },
          ),
        );
      },
    );
  }
}

class _SearchButton extends StatelessWidget {
  final c = SelectAssetController.con;
  @override
  Widget build(context) {
    return IconButton(
      icon: Icon(Icons.search),
      onPressed: () => showSearch(
        context: context,
        delegate: SearchPage<AssetData>(
          showItemsOnEmpty: true,
          items: c.assetList,
          searchLabel: c.title,
          filter: (asset) => [
            asset.displayName,
            asset.symbol,
          ],
          builder: (asset) => _AssetTile(asset, c.selectedAsset == asset),
        ),
      ),
    );
  }
}

class _AssetTile extends StatelessWidget {
  const _AssetTile(this.asset, this.checked, {Key key}) : super(key: key);
  final AssetData asset;
  final bool checked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        'assets/images/logo_lykke.png',
        height: AppSizes.extraLarge,
        width: AppSizes.extraLarge,
      ),
      title: Text(asset.displayName),
      subtitle: Text(asset.symbol),
      trailing: checked
          ? Icon(
              CupertinoIcons.check_mark_circled_solid,
              color: AppColors.accent,
            )
          : SizedBox.shrink(),
      onTap: () => Get.back(result: asset),
    );
  }
}
