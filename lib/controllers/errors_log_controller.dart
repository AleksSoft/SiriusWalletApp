import 'dart:convert';

import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/models/saved_errors_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ErrorsLogController extends GetxController {
  static ErrorsLogController get con => Get.find();

  final _storage = GetStorage();

  var savedErrorsModel = SavedErrorsModel();

  @override
  void onReady() {
    String jsonStr = _storage.read(AppStorageKeys.errorList);
    savedErrorsModel = jsonStr.isNullOrBlank
        ? SavedErrorsModel()
        : SavedErrorsModel().fromJson(json.decode(jsonStr));
    update();
    super.onReady();
  }
}
