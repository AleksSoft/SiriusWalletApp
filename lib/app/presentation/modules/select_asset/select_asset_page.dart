import 'package:antares_wallet/app/core/common/common.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/presentation/widgets/asset_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';

import 'select_asset_controller.dart';

class SelectAssetPage extends GetView<SelectAssetController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: controller.back,
        ),
        title: Text(controller.title),
        actions: [_SearchButton()],
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.assetList.length,
          itemBuilder: (content, index) =>
              _AssetTile(controller.assetList[index]),
        ),
      ),
    );
  }
}

class _SearchButton extends GetView<SelectAssetController> {
  @override
  Widget build(context) {
    return IconButton(
      icon: Icon(Icons.search),
      onPressed: () => showSearch(
        context: Get.context,
        delegate: SearchPage<Asset>(
          showItemsOnEmpty: true,
          items: controller.assetList,
          searchLabel: controller.title,
          filter: (asset) => [
            asset.name,
            asset.displayId,
          ],
          builder: (asset) => _AssetTile(asset),
        ),
      ),
    );
  }
}

class _AssetTile extends GetView<SelectAssetController> {
  const _AssetTile(this.asset, {Key key}) : super(key: key);
  final Asset asset;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AssetIcon(asset.iconUrl, AppSizes.extraLarge),
      title: Text(asset.displayId),
      subtitle: Text(asset.name),
      trailing: Obx(
        () => Visibility(
          visible: controller.selectedAsset.value.id == asset.id,
          child: Icon(Icons.check, color: AppColors.accent),
        ),
      ),
      onTap: () => controller.selectedAsset(asset),
    );
  }
}
