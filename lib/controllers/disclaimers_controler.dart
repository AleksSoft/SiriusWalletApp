import 'package:antares_wallet/repositories/disclaimers_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class DisclaimersController extends GetxController {
  static DisclaimersController get con => Get.find();

  final pageController = PageController(initialPage: 0);

  final _disclaimers = List<AssetDisclaimer>().obs;
  List<AssetDisclaimer> get disclaimers => this._disclaimers.value;
  set disclaimers(List<AssetDisclaimer> value) =>
      this._disclaimers.value = value;

  @override
  void onInit() async {
    ever(_disclaimers, (newDisclaimers) {});
    super.onInit();
  }

  @override
  void onClose() async {
    super.onClose();
  }

  Future<void> loadDisclaimers() async =>
      disclaimers = await DisclaimersRepository.getAssetDisclaimers();

  cancel() {}

  submit() {}
}
