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
    final SelectAssetArgs _args = ModalRoute.of(context).settings.arguments;

    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SelectAssetViewModel(
        selectedAsset: _args.selectedAsset,
        onlyBase: _args.onlyBase,
      ),
      onModelReady: (SelectAssetViewModel model) => model.initialise(),
      builder: (context, SelectAssetViewModel model, child) {
        final items = model.assetList;
        return Scaffold(
          appBar: AppBar(
            title: Text(_args.title),
            elevation: 0.5,
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () => showSearch(
                  context: context,
                  delegate: SearchPage<AssetData>(
                    showItemsOnEmpty: true,
                    items: items,
                    searchLabel: _args.title,
                    filter: (asset) => [
                      asset.displayName,
                      asset.symbol,
                    ],
                    builder: (asset) => _buildAssetTile(context, asset),
                  ),
                ),
              )
            ],
          ),
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (content, index) =>
                _buildAssetTile(context, items[index]),
          ),
        );
      },
    );
  }

  ListTile _buildAssetTile(BuildContext context, AssetData asset) {
    return ListTile(
      leading: Image.network(asset.icon),
      title: Text(asset.displayName),
      subtitle: Text(asset.symbol),
      onTap: () => Navigator.of(context).pop(asset),
    );
  }
}
