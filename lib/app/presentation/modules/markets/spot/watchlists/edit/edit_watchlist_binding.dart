import 'package:get/get.dart';

import 'edit_watchlist_controller.dart';

class EditWatchlistBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EditWatchlistController(
      watchlistRepo: Get.find(),
      marketsCon: Get.find(),
    ));
  }
}
