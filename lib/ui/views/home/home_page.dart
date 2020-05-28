import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_assets_view.dart';
import 'home_exchange_view.dart';
import 'home_luci_view.dart';
import 'home_my_lykke_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: false,
        title: Text('Antares Wallet'),
        elevation: 0.5,
      ),
      body: ListView(
        children: [
          HomeAssetsView(),
          HomeExchangeView(),
          HomeLyCIView(),
          HomeMyLykkeView(),
          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 16.0),
            child: Text(
              '© 2020 Lykke, Inc.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.button.copyWith(
                    color: AppColors.secondary,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
