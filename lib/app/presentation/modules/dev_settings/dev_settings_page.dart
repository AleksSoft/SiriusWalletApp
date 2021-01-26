import 'package:antares_wallet/app/core/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dev_settings_controller.dart';

class DevSettingsPage extends GetView<DevSettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: CloseButton(),
        title: Text('Developer settings'),
        actions: [
          FlatButton(
            onPressed: () => controller.showLogs(),
            child: Text('Show logs'),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.medium),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ListTile(
                  title: Text('Base url:'),
                  subtitle: Obx(
                    () => DropdownButton<String>(
                      isExpanded: true,
                      value: controller.selectedUrl.value,
                      items: controller.urlList
                          .map((e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(
                                  e,
                                  maxLines: 1,
                                  softWrap: false,
                                  overflow: TextOverflow.fade,
                                ),
                              ))
                          .toList(),
                      onChanged: controller.updateBaseUrl,
                    ),
                  ),
                ),
                Obx(
                  () => Visibility(
                    visible: !controller.apiToken.value.nullOrEmpty,
                    child: ListTile(
                      title: Text('API token:'),
                      subtitle: SelectableText(controller.apiToken.value ?? ''),
                      trailing: IconButton(
                        onPressed: () => controller.shareApiToken(),
                        icon: Icon(Icons.ios_share),
                        tooltip: 'Share API token',
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => Visibility(
                    visible: !controller.fcmToken.value.nullOrEmpty,
                    child: ListTile(
                      title: Text('FCM token:'),
                      subtitle: SelectableText(controller.fcmToken.value ?? ''),
                      trailing: IconButton(
                        onPressed: () => controller.shareFcmToken(),
                        icon: Icon(Icons.ios_share),
                        tooltip: 'Share FCM token',
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => ListTile(
                    title: Text(
                      controller.appVersion.value,
                      style: Get.textTheme.caption,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
