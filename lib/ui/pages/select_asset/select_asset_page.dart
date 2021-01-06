import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/presentation/widgets/asset_icon.dart';
import 'package:antares_wallet/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';

import 'select_asset_controller.dart';

class SelectAssetPage extends StatelessWidget {
  static final String route = '/select-asset';

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectAssetController>(
      init: SelectAssetController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            leading: BackButton(
              onPressed: () => _.back(),
            ),
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
        context: Get.context,
        delegate: SearchPage<Asset>(
          showItemsOnEmpty: true,
          items: c.assetList,
          searchLabel: c.title,
          filter: (asset) => [
            asset.name,
            asset.displayId,
          ],
          builder: (asset) => _AssetTile(asset, c.selectedAsset.id == asset.id),
        ),
      ),
    );
  }
}

class _AssetTile extends StatelessWidget {
  const _AssetTile(this.asset, this.checked, {Key key}) : super(key: key);
  final Asset asset;
  final bool checked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AssetIcon(asset.iconUrl, AppSizes.extraLarge),
      title: Text(asset.displayId),
      subtitle: Text(asset.name),
      trailing: Visibility(
        visible: checked,
        child: Icon(Icons.check, color: AppColors.accent),
      ),
      onTap: () => SelectAssetController.con.select(asset),
    );
  }
}
