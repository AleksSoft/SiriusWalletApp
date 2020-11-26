import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/controllers/settings_controller.dart';
import 'package:antares_wallet/ui/pages/more/settings/backup/backup_confirm_key_page.dart';
import 'package:antares_wallet/ui/widgets/default_card.dart';
import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackUpCopyKeyPage extends StatelessWidget {
  static final String route = '/back-up-copy-key';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('back_up'.tr),
      ),
      body: GetBuilder<SettingsController>(
        builder: (_) {
          return ListView(
            padding: const EdgeInsets.all(AppSizes.medium),
            shrinkWrap: true,
            children: [
              AppUiHelpers.vSpaceMedium,
              Text(
                'msg_back_up_write_down'.tr,
                style: Get.textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              AppUiHelpers.vSpaceLarge,
              _KeyWordsCard(),
              AppUiHelpers.vSpaceLarge,
              CupertinoButton.filled(
                child: Text('continue'.tr),
                onPressed: () => Get.toNamed(BackUpConfirmKeyPage.route),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _KeyWordsCard extends StatelessWidget {
  final c = SettingsController.con;
  @override
  Widget build(context) {
    return DefaultCard(
      margin: const EdgeInsets.all(0.0),
      borderRadius: BorderRadius.all(Radius.zero),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSizes.medium),
            child: SelectableText(
              // c.settings.privateKey,
              '',
              style: Get.textTheme.headline6.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          Row(
            children: [
              Spacer(),
              FlatButton(
                child: Text('copy'.tr),
                onPressed: () => _copyKey(
                  context,
                  // c.settings.privateKey,
                  '',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  _copyKey(BuildContext context, String key) {
    ClipboardManager.copyToClipBoard(key).then((result) {
      Get.rawSnackbar(
        messageText: Text(
          'msg_key_copied'.tr,
          style: Get.textTheme.button.apply(
            color: AppColors.primary,
          ),
        ),
      );
    });
  }
}
