import 'package:antares_wallet/business/view_models/portfolio/portfolio_assets_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PortfolioAssetsTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleTheme = Theme.of(context).textTheme.headline5.copyWith(
          fontFamily: 'Akrobat',
          fontWeight: FontWeight.w700,
        );
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => PortfolioAssetsViewModel(),
      onModelReady: (PortfolioAssetsViewModel model) => model.initialise(),
      builder: (context, PortfolioAssetsViewModel model, child) {
        return Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Balance',
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(fontSize: 14),
                  ),
                  Text('USD 0,00', style: titleTheme),
                ],
              ),
            ),
            model.categoryList.length > 0
                ? Flexible(
                    child: PortfolioAssetsCategoryTabsView(model),
                  )
                : SizedBox.shrink(),
          ],
        );
      },
//      child:
    );
  }
}

class PortfolioAssetsCategoryTabsView extends StatelessWidget {
  final PortfolioAssetsViewModel model;
  const PortfolioAssetsCategoryTabsView(this.model, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: model.categoryList.length,
      child: Column(
        children: [
          Container(
            child: TabBar(
              indicatorWeight: 1.0,
              indicatorColor: Colors.black,
              tabs: model.categoryList
                  .map((category) => Container(
                        height: 40.0,
                        alignment: Alignment.center,
                        child: Text(
                          category.categoryName,
                          textAlign: TextAlign.center,
                        ),
                      ))
                  .toList(),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: model.categoryList.map((category) {
                var assets = model.getAssetsByCategoryId(category.categoryId);
                return ListView.builder(
                  itemCount: assets.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(assets[index].displayName),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
