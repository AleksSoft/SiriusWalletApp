import 'dart:convert';

import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/models/saved_errors_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class ErrorsLogController extends GetxController {
  static ErrorsLogController get con => Get.find();

  final FlutterSecureStorage storage;
  ErrorsLogController({@required this.storage}) : assert(storage != null);

  var savedErrorsModel = SavedErrorsModel();

  @override
  void onInit() {
    fetchSavedErrors();
    super.onInit();
  }

  Future<void> fetchSavedErrors() async {
    String jsonStr = await storage.read(key: AppStorageKeys.errorList);
    savedErrorsModel = jsonStr.isNullOrBlank
        ? SavedErrorsModel()
        : SavedErrorsModel().fromJson(json.decode(jsonStr));
    update();
  }
}
