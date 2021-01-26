import 'dart:convert';

import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/data_sources/app_storage.dart';
import 'package:antares_wallet/app/data/models/saved_errors_model.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class ErrorsLogController extends GetxController {
  static ErrorsLogController get con => Get.find();

  final IAppStorage storage;
  ErrorsLogController({@required this.storage}) : assert(storage != null);

  var savedErrorsModel = SavedErrorsModel();

  @override
  void onInit() {
    fetchSavedErrors();
    super.onInit();
  }

  Future<void> fetchSavedErrors() async {
    String jsonStr = await storage.getString(AppStorageKeys.errorList);
    savedErrorsModel = jsonStr.nullOrEmpty
        ? SavedErrorsModel()
        : SavedErrorsModel().fromJson(json.decode(jsonStr));
    update();
  }
}
