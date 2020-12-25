import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/controllers/profile_controller.dart';
import 'package:antares_wallet/ui/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpgradeAccountMainPage extends StatelessWidget {
  static final String route = '/upgrade-account-main';
  final c = ProfileController.con;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0.0),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(
          AppSizes.medium,
          AppSizes.small,
          AppSizes.medium,
          AppSizes.medium,
        ),
        shrinkWrap: true,
        children: [
          _LevelCard(),
          AppUiHelpers.vSpaceExtraLarge,
          _LevelHeaderView(),
          AppUiHelpers.vSpaceExtraLarge,
          _ListView(),
          AppUiHelpers.vSpaceExtraLarge,
          DefaultCard(
            blurRadius: 10,
            shadowColor: AppColors.accent.withOpacity(0.5),
            borderRadius: BorderRadius.all(Radius.circular(AppSizes.small)),
            child: CupertinoButton.filled(
              child: Text('upgrade_account'.tr),
              onPressed: () => c.openNextUpgradePage(fromMain: true),
            ),
          ),
        ],
      ),
    );
  }
}

class _LevelCard extends StatelessWidget {
  final c = ProfileController.con;
  @override
  Widget build(context) {
    return DefaultCard(
      padding: const EdgeInsets.all(AppSizes.medium),
      shadowColor: AppColors.secondary.withOpacity(0.3),
      blurRadius: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'title_your_account'.tr,
            style: Get.textTheme.caption.copyWith(
              fontSize: 10.0,
            ),
          ),
          AppUiHelpers.vSpaceExtraSmall,
          Obx(
            () => Text(
              c.tierInfo.currentTier.tier,
              style: Get.textTheme.headline6.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppSizes.small),
            child: Text('msg_explore_crypto'.tr),
          ),
        ],
      ),
    );
  }
}

class _LevelHeaderView extends StatelessWidget {
  final c = ProfileController.con;
  @override
  Widget build(context) {
    return Column(
      children: [
        Text(
          'title_upgrade_to'.tr,
          style: Get.textTheme.caption.copyWith(
            fontSize: 10.0,
          ),
        ),
        AppUiHelpers.vSpaceExtraSmall,
        Obx(
          () => Text(
            c.tierInfo.nextTier.tier,
            style: Get.textTheme.headline6.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.accent,
            ),
          ),
        ),
        AppUiHelpers.vSpaceSmall,
        Obx(
          () => Visibility(
            visible: c.tierInfo.nextTier.maxLimit != '0',
            child: Text(
              'msg_upgrade_deposit_to'.trArgs([c.tierInfo.nextTier.maxLimit]),
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ),
        ),
      ],
    );
  }
}

class _ListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      alignment: Alignment.center,
      child: GetX<ProfileController>(
        builder: (_) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: _.personalData.address.isBlank,
              child: Padding(
                padding: const EdgeInsets.only(bottom: AppSizes.small),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      _.hasAccountInfo
                          ? Icons.check_circle_outline_outlined
                          : Icons.circle,
                      color: _.hasAccountInfo
                          ? AppColors.accent
                          : AppColors.secondary,
                      size: 22.0,
                    ),
                    AppUiHelpers.hSpaceMedium,
                    Text('account_information'.tr),
                  ],
                ),
              ),
            ),
            for (var doc in _.tierInfo.nextTier.documents) _buildRow(doc, _)
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String docType, ProfileController c) {
    final String title = c.docTitle(docType);
    final bool checked = c.documentsMap[docType] != null;
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSizes.small),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            checked ? Icons.check_circle_outline_outlined : Icons.circle,
            color: checked ? AppColors.accent : AppColors.secondary,
            size: 22.0,
          ),
          AppUiHelpers.hSpaceMedium,
          Text(title),
        ],
      ),
    );
  }
}
