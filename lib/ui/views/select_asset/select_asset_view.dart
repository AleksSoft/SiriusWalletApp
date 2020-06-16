import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/views/select_asset/select_asset_view_model.dart';
import 'package:flutter/cupertino.dart';
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
    this.onlyBase = false,
    Key key,
  });
}

class SelectAssetView extends StatelessWidget {
  final SelectAssetArgs args;

  SelectAssetView(this.args);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SelectAssetViewModel>.nonReactive(
      viewModelBuilder: () => SelectAssetViewModel(),
      onModelReady: (model) => model.initialise(this.args),
      builder: (context, model, child) {
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
  Widget build(context, model) {
    return ListView.builder(
      itemCount: model.assetList.length,
      itemBuilder: (content, index) {
        var asset = model.assetList[index];
        return _AssetTile(asset, model.selectedAsset == asset);
      },
    );
  }
}

class _SearchButton extends ViewModelWidget<SelectAssetViewModel> {
  @override
  Widget build(context, model) {
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
          builder: (asset) => _AssetTile(asset, model.selectedAsset == asset),
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
        height: 32.0,
        width: 32.0,
      ),
      title: Text(asset.displayName),
      subtitle: Text(asset.symbol),
      trailing: checked
          ? Icon(
              CupertinoIcons.check_mark_circled_solid,
              color: AppColors.accent,
            )
          : SizedBox.shrink(),
      onTap: () => Navigator.of(context).pop(asset),
    );
  }
}
