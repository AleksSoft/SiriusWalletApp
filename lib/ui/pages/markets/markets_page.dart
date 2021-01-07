import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:antares_wallet/controllers/markets_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'spot/markets_spot_view.dart';

class MarketsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.edit, color: AppColors.accent),
          onPressed: () => Get.toNamed(Routes.WATCH_LISTS),
        ),
        title: Text('exchange'.tr),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: AppColors.accent),
            onPressed: () => MarketsController.con.search(),
          ),
        ],
      ),
      body: SpotMarketsView(),
    );
  }
}
