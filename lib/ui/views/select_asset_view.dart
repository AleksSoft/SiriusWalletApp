import 'package:antares_wallet/business/dto/asset_dictionary_data.dart';
import 'package:antares_wallet/business/view_models/select_asset_view_model.dart';
import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:stacked/stacked.dart';

class SelectAssetArgs {
  final String title;
  final AssetData selectedAsset;
  final bool onlyBase;

  const SelectAssetArgs({
    @required this.title,
    this.selectedAsset,
    this.onlyBase,
    Key key,
  });
}

class SelectAssetView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => SelectAssetViewModel(
        ModalRoute.of(context).settings.arguments,
      ),
      onModelReady: (SelectAssetViewModel model) => model.initialise(),
      builder: (context, SelectAssetViewModel model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(model.title),
            elevation: 0.5,
            actions: [_SearchButton()],
          ),
          body: _AssetsList(),
        );
      },
    );
  }
}

class _AssetsList extends ViewModelWidget<SelectAssetViewModel> {
  const _AssetsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, SelectAssetViewModel model) {
    return ListView.builder(
      itemCount: model.assetList.length,
      itemBuilder: (content, index) => _AssetTile(model.assetList[index]),
    );
  }
}

class _SearchButton extends ViewModelWidget<SelectAssetViewModel> {
  @override
  Widget build(BuildContext context, SelectAssetViewModel model) {
    return IconButton(
      icon: Icon(Icons.search),
      onPressed: () => showSearch(
        context: context,
        delegate: SearchPage<AssetData>(
          showItemsOnEmpty: true,
          items: model.assetList,
          searchLabel: model.title,
          filter: (asset) => [
            asset.displayName,
            asset.symbol,
          ],
          builder: (asset) => _AssetTile(asset),
        ),
      ),
    );
  }
}

class _AssetTile extends StatelessWidget {
  const _AssetTile(
    this.asset, {
    Key key,
  }) : super(key: key);
  final AssetData asset;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(asset.icon),
      title: Text(asset.displayName),
      subtitle: Text(asset.symbol),
      onTap: () => Navigator.of(context).pop(asset),
    );
  }
}
