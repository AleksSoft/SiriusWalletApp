import 'package:antares_wallet/ui/views/widgets/default_card.dart';
import 'package:flutter/material.dart';

class PortfolioAssetsTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleTheme = Theme.of(context).textTheme.headline5.copyWith(
          fontFamily: 'Akrobat',
          fontWeight: FontWeight.w700,
        );
    return ListView(
      padding: EdgeInsets.only(top: 16.0),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Balance',
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 14,
                  ),
            ),
            Text('USD 0,00', style: titleTheme),
          ],
        ),
        SizedBox(height: 16.0),
        PortfolioAssetsCategoryView('Currencies', 'CHF', 'CHF'),
        SizedBox(height: 16.0),
        PortfolioAssetsCategoryView('Lykke', 'LKK', 'Lykke coin'),
      ],
    );
  }
}

class PortfolioAssetsCategoryView extends StatelessWidget {
  final String title;
  final String assetSymbol;
  final String assetName;
  const PortfolioAssetsCategoryView(
      this.title, this.assetSymbol, this.assetName,
      {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleTheme = Theme.of(context).textTheme.headline5.copyWith(
          fontFamily: 'Akrobat',
          fontWeight: FontWeight.w700,
        );
    return Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(this.title, style: titleTheme),
          ),
          SizedBox(height: 8.0),
          SizedBox(
            height: 110,
            child: ListView.builder(
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return PortfolioAssetView(this.assetSymbol, this.assetName);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class PortfolioAssetView extends StatelessWidget {
  final String assetSymbol;
  final String assetName;
  const PortfolioAssetView(
    this.assetSymbol,
    this.assetName, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleTheme = Theme.of(context).textTheme.headline5.copyWith(
          fontFamily: 'Akrobat',
          fontWeight: FontWeight.w700,
          fontSize: 18.0,
        );
    return DefaultCard(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  this.assetSymbol,
                  style: titleTheme,
                ),
                Image.asset(
                  'assets/logo_lykke.png',
                  height: 24.0,
                  width: 24.0,
                ),
              ],
            ),
            Text(
              this.assetName,
              style: Theme.of(context).textTheme.caption,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '0,00',
                  style: titleTheme,
                ),
                Text(
                  'USD 0,00',
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
