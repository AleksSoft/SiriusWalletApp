import 'dart:convert';

import 'package:antares_wallet/app/common/app_storage_keys.dart';
import 'package:antares_wallet/models/saved_errors_model.dart';
import 'package:cross_local_storage/cross_local_storage.dart';
import 'package:get/get.dart';

class ErrorsLogController extends GetxController {
  static ErrorsLogController get con => Get.find();

  final _storage = Get.find<LocalStorageInterface>();

  var savedErrorsModel = SavedErrorsModel();

  @override
  void onReady() {
    String jsonStr = _storage.getString(AppStorageKeys.errorList);
    savedErrorsModel = jsonStr.isNullOrBlank
        ? SavedErrorsModel()
        : SavedErrorsModel().fromJson(json.decode(jsonStr));
    update();
    super.onReady();
  }
}
