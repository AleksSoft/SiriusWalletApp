import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/controllers/dev_settings/dev_settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            child: GetBuilder<DevSettingsController>(
              builder: (_) => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListTile(
                    title: Text('Base url:'),
                    subtitle: DropdownButton<String>(
                      isExpanded: true,
                      value: _.defaultUrl,
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
                      onChanged: (url) => _.updateBaseUrl(url),
                    ),
                  ),
                  Visibility(
                    visible: !_.token.isNullOrBlank,
                    child: ListTile(
                      title: Text('Api token:'),
                      subtitle: SelectableText(_.token),
                      trailing: IconButton(
                        onPressed: () => _.shareToken(),
                        icon: Icon(Icons.ios_share),
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
