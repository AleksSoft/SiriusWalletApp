import 'package:antares_wallet/app/presentation/widgets/default_card.dart';
import 'package:antares_wallet/common/common.dart';
import 'package:antares_wallet/controllers/profile_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpgradeAccountAddress extends StatelessWidget {
  static final String route = '/upgrade-account-address';
  final c = ProfileController.con;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
            'upgrade_to'.trArgs(
              ['${ProfileController.con.tierInfo.nextTier.tier}'],
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
                onChanged: (String s) => c.addressValue = s,
                initialValue: c.addressValue,
                keyboardType: TextInputType.streetAddress,
                validator: (String value) => c.validateAddress(value),
                decoration: InputDecoration(
                  labelText: 'Address',
                ),
              ),
              AppUiHelpers.vSpaceSmall,
              Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      onChanged: (String s) => c.apartmentValue = s,
                      initialValue: c.apartmentValue,
                      keyboardType: TextInputType.streetAddress,
                      validator: (String value) => c.validateAddress(value),
                      decoration: InputDecoration(
                        labelText: 'Apt.',
                      ),
                    ),
                  ),
                  AppUiHelpers.hSpaceLarge,
                  Flexible(
                    child: TextFormField(
                      onChanged: (String s) => c.zipCodeValue = s,
                      initialValue: c.zipCodeValue,
                      keyboardType: TextInputType.number,
                      validator: (String value) => c.validateAddress(value),
                      decoration: InputDecoration(
                        labelText: 'Zip code',
                      ),
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
                  onPressed: () => c.submitAddress(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
