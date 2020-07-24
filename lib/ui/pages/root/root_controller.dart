import 'package:get/get.dart';

class RootController extends GetxController {
  static RootController get con => Get.find();

  final pageIndexObs = 0.obs;
  get pageIndex => this.pageIndexObs.value;
  set pageIndex(value) => this.pageIndexObs.value = value;

  bool isSelected(int index) => pageIndex == index;
}
