import 'package:get/get.dart';

class RootController extends GetxController {
  static RootController get con => Get.find();
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  updatePage(int index) {
    _currentIndex = index;
    update();
  }

  bool isSelected(int index) => _currentIndex == index;
}
