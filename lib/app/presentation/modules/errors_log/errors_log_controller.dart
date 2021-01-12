import 'dart:convert';

import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/models/saved_errors_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:meta/meta.dart';

class ErrorsLogController extends GetxController {
  static ErrorsLogController get con => Get.find();

  final GetStorage storage;
  ErrorsLogController({@required this.storage}) : assert(storage != null);

  var savedErrorsModel = SavedErrorsModel();

  @override
  void onInit() {
    fetchSavedErrors();
    super.onInit();
  }

  void fetchSavedErrors() {
    String jsonStr = storage.read(AppStorageKeys.errorList);
    savedErrorsModel = jsonStr.isNullOrBlank
        ? SavedErrorsModel()
        : SavedErrorsModel().fromJson(json.decode(jsonStr));
    update();
  }
}
