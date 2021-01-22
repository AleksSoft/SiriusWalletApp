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

  UpgradeAccountDocMode docMode = UpgradeAccountDocMode.two_side;
  File image1;
  File image2;

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

  String get photoHeader {
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

  bool get isOneSide => docMode == UpgradeAccountDocMode.one_side;

  void getImage() => picker.getImage(source: ImageSource.camera).then((value) {
        image1 = File(value.path);
        update();
      });

  void submit() {
    profileCon.submitDoc(docType, image1.readAsBytesSync().toList());
  }
}
