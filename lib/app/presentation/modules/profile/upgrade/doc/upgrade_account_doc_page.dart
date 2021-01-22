import 'dart:io';

import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/presentation/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'upgrade_account_doc_controller.dart';

class UpgradeAccountDocPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UpgradeAccountDocController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: Text(controller.title),
          centerTitle: true,
          bottom: controller.isOneSide
              ? null
              : TabBar(
                  indicatorWeight: 1.0,
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(text: 'front_side'.tr),
                    Tab(text: 'back_side'.tr),
                  ],
                ),
        ),
        body: controller.isOneSide
            ? _DocView(controller.image1)
            : TabBar(
                indicatorWeight: 1.0,
                indicatorColor: Colors.black,
                tabs: [
                  _DocView(controller.image1),
                  _DocView(controller.image2),
                ],
              ),
      ),
    );
  }
}

class _DocView extends GetView<UpgradeAccountDocController> {
  final File image;
  _DocView(this.image);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.extraLarge,
        vertical: AppSizes.large,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppUiHelpers.vSpaceLarge,
          Flexible(
            child: DefaultCard(
              borderRadius: const BorderRadius.all(
                Radius.circular(AppSizes.small),
              ),
              child: Stack(
                children: [
                  this.image != null
                      ? SizedBox.expand(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              AppSizes.small,
                            ),
                            child: Image.file(
                              this.image,
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                  Visibility(
                    visible: this.image != null,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: controller.getImage,
                        child: Container(
                          width: 102,
                          height: 36,
                          padding: const EdgeInsets.all(AppSizes.small),
                          alignment: Alignment.center,
                          decoration: new BoxDecoration(
                            color: AppColors.primary.withOpacity(0.8),
                            borderRadius: new BorderRadius.only(
                              topRight: const Radius.circular(AppSizes.small),
                              bottomLeft: const Radius.circular(AppSizes.small),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.camera_alt_outlined),
                              AppUiHelpers.hSpaceExtraSmall,
                              Text('change'.tr),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: this.image == null,
                    child: Column(
                      children: [
                        Flexible(
                          flex: 45,
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: AppSizes.extraLarge,
                            ),
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              controller.photoHeader,
                              style: Get.textTheme.subtitle1.copyWith(
                                fontSize: 12.0,
                              ),
                              textAlign:
                                  controller.docType == DocType.proofOfAddress
                                      ? TextAlign.left
                                      : TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 55,
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: AppSizes.extraLarge,
                              vertical: AppSizes.medium,
                            ),
                            alignment: Alignment.bottomCenter,
                            child: InkWell(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.camera_alt,
                                    size: 50.0,
                                    color: AppColors.accent,
                                  ),
                                  Text(
                                    'msg_upload_photo'.tr,
                                    style: Get.textTheme.button.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              onTap: controller.getImage,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          AppUiHelpers.vSpaceMedium,
          DefaultCard(
            blurRadius: this.image == null ? 0 : 10,
            shadowColor: AppColors.accent.withOpacity(0.5),
            borderRadius: BorderRadius.all(Radius.circular(AppSizes.small)),
            child: CupertinoButton.filled(
              disabledColor: Colors.grey.withOpacity(0.7),
              child: Text('submit'.tr),
              onPressed: controller.submit,
            ),
          ),
        ],
      ),
    );
  }
}
