import 'package:antares_wallet/app/core/common/common.dart';
import 'package:antares_wallet/app/presentation/modules/profile/profile_controller.dart';
import 'package:antares_wallet/app/presentation/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpgradeAccountAddress extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
            'upgrade_to'.trArgs(
              ['${controller.tierInfo.value.nextTier.tier}'],
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Theme(
        data: Get.theme.copyWith(primaryColor: AppColors.accent),
        child: SizedBox(
          width: Get.width,
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(AppSizes.medium),
            children: <Widget>[
              TextFormField(
                onChanged: (String s) => controller.addressValue = s,
                initialValue: controller.addressValue,
                keyboardType: TextInputType.streetAddress,
                validator: (String value) => controller.validateAddress(value),
                decoration: InputDecoration(
                  labelText: 'address'.tr,
                ),
              ),
              AppUiHelpers.vSpaceSmall,
              Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      onChanged: (String s) => controller.apartmentValue = s,
                      initialValue: controller.apartmentValue,
                      keyboardType: TextInputType.streetAddress,
                      validator: (String value) =>
                          controller.validateAddress(value),
                      decoration: InputDecoration(
                        labelText: 'apt'.tr,
                      ),
                    ),
                  ),
                  AppUiHelpers.hSpaceLarge,
                  Flexible(
                    child: TextFormField(
                      onChanged: (String s) => controller.zipCodeValue = s,
                      initialValue: controller.zipCodeValue,
                      keyboardType: TextInputType.number,
                      validator: (String value) =>
                          controller.validateAddress(value),
                      decoration: InputDecoration(labelText: 'zip_code'.tr),
                    ),
                  ),
                ],
              ),
              AppUiHelpers.vSpaceMedium,
              DefaultCard(
                blurRadius: 10,
                shadowColor: AppColors.accent.withOpacity(0.5),
                borderRadius: BorderRadius.all(Radius.circular(AppSizes.small)),
                child: CupertinoButton.filled(
                  child: Text('upgrade_account'.tr),
                  onPressed: () => controller.submitAddress(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
