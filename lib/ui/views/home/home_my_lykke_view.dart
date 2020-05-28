import 'package:antares_wallet/ui/views/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeMyLykkeView extends StatelessWidget {
  const HomeMyLykkeView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'My lykke',
              style: Theme.of(context).textTheme.headline6.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(height: 8.0),
            Divider(height: 1.0),
            _buildListTile(context),
            Divider(height: 1.0),
            _buildListTile(context),
            Divider(height: 1.0),
            _buildListTile(context),
            Divider(height: 1.0),
            SizedBox(height: 16.0),
            CupertinoButton.filled(
              padding: EdgeInsets.all(0.0),
              child: Text('Buy now'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  ListTile _buildListTile(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.all(0.0),
      title: Text(
        'LKK',
        style: Theme.of(context).textTheme.subtitle1.copyWith(
              fontWeight: FontWeight.w600,
            ),
      ),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/logo_lykke.png',
            height: 15.0,
            width: 15.0,
          ),
          SizedBox(width: 4.0),
          Text(
            'LyCI Service Token',
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        textDirection: TextDirection.rtl,
        children: [
          Text(
            'LKK 0,00',
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 4.0),
          Text(
            'USD 0,00',
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}
