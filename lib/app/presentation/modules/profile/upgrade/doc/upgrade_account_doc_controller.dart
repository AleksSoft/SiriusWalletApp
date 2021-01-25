import 'dart:io';

import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/presentation/modules/profile/profile_controller.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

class UpgradeAccountDocController extends GetxController {
  static UpgradeAccountDocController get con => Get.find();

  final picker = ImagePicker();

  final ProfileController profileCon;
  final DocType docType;
  UpgradeAccountDocController({
    @required this.profileCon,
    @required this.docType,
  }) {
    if (docType == DocType.nationalId || docType == DocType.drivingLicense) {
      docMode = UpgradeAccountDocMode.two_side;
      update();
    }
  }

  UpgradeAccountDocMode docMode = UpgradeAccountDocMode.one_side;
  File frontImage;
  File backImage;

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    if (value != _loading) {
      _loading = value;
      update();
    }
  }

  String get tierName => profileCon.tierInfo.value.nextTier.tier;

  String get title {
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

  String getPhotoHeader({bool isFront = true}) {
    switch (docType) {
      case DocType.passport:
        return 'msg_upgrade_passport'.tr;
      case DocType.nationalId:
        return isFront
            ? 'msg_upgrade_national_id'.tr
            : 'msg_upgrade_national_id_back'.tr;
      case DocType.drivingLicense:
        return isFront
            ? 'msg_upgrade_driving_license'.tr
            : 'msg_upgrade_driving_license_back'.tr;
      case DocType.selfie:
        return 'msg_upgrade_selfie'.tr;
      case DocType.proofOfAddress:
        return 'msg_upgrade_proof_of_address'.tr;
      case DocType.proofOfFunds:
      default:
        return '';
    }
  }

  bool get isOneSide => docMode == UpgradeAccountDocMode.one_side;

  bool get allowed =>
      isOneSide ? frontImage != null : frontImage != null && backImage != null;

  void makePhotoImage(bool isFront) =>
      picker.getImage(source: ImageSource.camera).then((value) {
        isFront ? frontImage = File(value.path) : backImage = File(value.path);
        update();
      });

  void submit() async {
    loading = true;
    await profileCon.submitDoc(
      docType,
      frontImage.readAsBytesSync().toList(),
      isFront: true,
      openNext: isOneSide,
    );
    if (!isOneSide) {
      await profileCon.submitDoc(
        docType,
        backImage.readAsBytesSync().toList(),
        isFront: false,
        openNext: true,
      );
    }
    loading = false;
  }
}
