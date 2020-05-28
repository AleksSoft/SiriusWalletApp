import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:flutter/material.dart';

class ExchangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.edit, color: AppColors.accent),
          onPressed: () {},
        ),
        title: Text('Exchange'),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: AppColors.accent),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ExchangeListHeaderView(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                ExchangeListTile(AppColors.green),
                ExchangeListTile(AppColors.red),
                ExchangeListTile(AppColors.secondary),
                ExchangeListTile(AppColors.red),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExchangeListTile extends StatelessWidget {
  final Color color;

  const ExchangeListTile(this.color, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyleButton = Theme.of(context).textTheme.button;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 8.0),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'logo_lykke.png',
              height: 16.0,
              width: 16.0,
            ),
            SizedBox(width: 4.0),
            Text(
              'USD',
              style: Theme.of(context).textTheme.subtitle2.copyWith(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'USD',
                      style: textStyleButton.copyWith(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                      children: [
                        TextSpan(
                          text: ' / CHF',
                          style: textStyleButton.copyWith(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Vol 18756,42',
                    style: textStyleButton.copyWith(
                      fontSize: 12.0,
                      color: AppColors.secondary,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '0,9638',
                    style: textStyleButton.copyWith(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'USD 0,99',
                    style: textStyleButton.copyWith(
                      fontSize: 12.0,
                      color: AppColors.secondary,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                margin: EdgeInsets.only(left: 8.0, bottom: 16.0),
                padding: EdgeInsets.symmetric(vertical: 3.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: this.color.withOpacity(0.2),
                ),
                child: Text(
                  '-0,31%',
                  textAlign: TextAlign.end,
                  style: textStyleButton.copyWith(
                    fontSize: 12.0,
                    color: this.color,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8.0),
        Divider(color: AppColors.secondary.withOpacity(0.4), height: 1),
      ],
    );
  }
}

class ExchangeListHeaderView extends StatelessWidget {
  const ExchangeListHeaderView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Divider(
          color: AppColors.secondary.withOpacity(0.4),
          height: 1,
          indent: 16.0,
          endIndent: 16.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SizedBox(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Text(
                    'Name / Vol',
                    style: Theme.of(context).textTheme.button.copyWith(
                          color: AppColors.secondary,
                        ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Text(
                    'Last price',
                    style: Theme.of(context).textTheme.button.copyWith(
                          color: AppColors.secondary,
                        ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Text(
                    '24h Chg %',
                    style: Theme.of(context).textTheme.button.copyWith(
                          color: AppColors.secondary,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: AppColors.secondary.withOpacity(0.4),
          height: 1,
          indent: 16.0,
          endIndent: 16.0,
        ),
      ],
    );
  }
}
