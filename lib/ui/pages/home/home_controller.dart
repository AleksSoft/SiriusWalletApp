import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get con => Get.find();

  bool hidden = false;

  toggleHidden() {
    hidden = !hidden;
    update();
  }
}
