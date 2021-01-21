import 'dart:io';

import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/presentation/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../profile_controller.dart';

class UpgradeAccountDocPage extends StatefulWidget {
  final DocType docType = Get.arguments as DocType;

  @override
  _UpgradeAccountDocPageState createState() => _UpgradeAccountDocPageState();
}

class _UpgradeAccountDocPageState extends State<UpgradeAccountDocPage> {
  File _image;
  final picker = ImagePicker();

  Future _getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    setState(() {
      _image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
            'upgrade_to'.trArgs(
              ['${ProfileController.con.tierInfo.value.nextTier.tier}'],
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.extraLarge,
          vertical: AppSizes.large,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              _title(widget.docType),
              style: Get.textTheme.button.copyWith(
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
            AppUiHelpers.vSpaceLarge,
            Flexible(
              child: DefaultCard(
                borderRadius:
                    const BorderRadius.all(Radius.circular(AppSizes.small)),
                child: Stack(
                  children: [
                    _image != null
                        ? SizedBox.expand(
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(AppSizes.small),
                              child: Image.file(
                                _image,
                                alignment: Alignment.center,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          )
                        : SizedBox.shrink(),
                    Visibility(
                      visible: _image != null,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: () => _getImage(),
                          child: Container(
                            width: 102,
                            height: 36,
                            padding: const EdgeInsets.all(AppSizes.small),
                            alignment: Alignment.center,
                            decoration: new BoxDecoration(
                              color: AppColors.primary.withOpacity(0.8),
                              borderRadius: new BorderRadius.only(
                                topRight: const Radius.circular(AppSizes.small),
                                bottomLeft:
                                    const Radius.circular(AppSizes.small),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.camera_alt),
                                AppUiHelpers.hSpaceExtraSmall,
                                Text('change'.tr),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: _image == null,
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
                                _photoHeader(widget.docType),
                                style: Get.textTheme.subtitle1.copyWith(
                                  fontSize: 12.0,
                                ),
                                textAlign:
                                    widget.docType == DocType.proofOfAddress
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
                                onTap: () => _getImage(),
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
              blurRadius: _image == null ? 0 : 10,
              shadowColor: AppColors.accent.withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(AppSizes.small)),
              child: CupertinoButton.filled(
                disabledColor: Colors.grey.withOpacity(0.7),
                child: Text('submit'.tr),
                onPressed: () => ProfileController.con.submitDoc(
                  widget.docType,
                  _image.readAsBytesSync().toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _title(DocType docType) {
    switch (docType) {
      case DocType.passport:
        return 'passport'.tr;
      case DocType.nationalId:
        return 'national_id'.tr;
      case DocType.drivingLicense:
        return 'driving_license'.tr;
      case DocType.selfie:
        return 'selfie'.tr;
      case DocType.proofOfAddress:
        return 'proof_of_address'.tr;
      case DocType.proofOfFunds:
        return 'proof_of_funds'.tr;
      default:
        return '';
    }
  }

  String _photoHeader(DocType docType) {
    switch (docType) {
      case DocType.passport:
        return 'msg_upgrade_passport'.tr;
      case DocType.nationalId:
        return 'msg_upgrade_national_id'.tr;
      case DocType.drivingLicense:
        return 'msg_upgrade_driving_license'.tr;
      case DocType.selfie:
        return 'msg_upgrade_selfie'.tr;
      case DocType.proofOfAddress:
        return 'msg_upgrade_proof_of_address'.tr;
      case DocType.proofOfFunds:
      default:
        return '';
    }
  }
}
