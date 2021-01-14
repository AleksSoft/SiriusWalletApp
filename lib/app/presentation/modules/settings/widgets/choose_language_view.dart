import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../settings_controller.dart';

class ChooseLanguageView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Get.back(),
        ),
        title: Text('choose_language'.tr),
        centerTitle: true,
      ),
      body: Column(
        children: controller.translations.keys
            .map((langCode) => ListTile(
                  title: Text(langCode.tr),
                  onTap: () => controller.updateLocale(langCode),
                ))
            .toList(),
      ),
    );
  }
}
