import 'package:antares_wallet/app/common/common.dart';
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
            child: GetX<DevSettingsController>(
              builder: (_) => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListTile(
                    title: Text('Base url:'),
                    subtitle: DropdownButton<String>(
                      isExpanded: true,
                      value: _.selectedUrl.value,
                      items: _.urlList
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
                      onChanged: _.updateBaseUrl,
                    ),
                  ),
                  Visibility(
                    visible: !_.apiToken.isNullOrBlank,
                    child: ListTile(
                      title: Text('API token:'),
                      subtitle: SelectableText(_.apiToken),
                      trailing: IconButton(
                        onPressed: () => _.shareApiToken(),
                        icon: Icon(Icons.ios_share),
                        tooltip: 'Share API token',
                      ),
                    ),
                  ),
                  Visibility(
                    visible: !_.fcmToken.isNullOrBlank,
                    child: ListTile(
                      title: Text('FCM token:'),
                      subtitle: SelectableText(_.fcmToken),
                      trailing: IconButton(
                        onPressed: () => _.shareFcmToken(),
                        icon: Icon(Icons.ios_share),
                        tooltip: 'Share FCM token',
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
      ),
    );
  }
}
