import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:get/get.dart';

class WatchListsController extends GetxController {
  List<Watchlist> items = List();

  @override
  void onInit() async {
    super.onInit();
    await _loadWatchLists();
    update();
  }

  _loadWatchLists() async {
    final response = await ApiService.client.getWatchlists(Empty());
    items = response.result;
  }
}
