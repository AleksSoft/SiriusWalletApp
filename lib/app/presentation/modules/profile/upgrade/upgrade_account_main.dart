import 'package:antares_wallet/app/core/common/common.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/presentation/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../profile_controller.dart';

class UpgradeAccountMainPage extends StatelessWidget {
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
              c.tierInfo.value.currentTier.tier,
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
            c.tierInfo.value.nextTier.tier,
            style: Get.textTheme.headline6.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.accent,
            ),
          ),
        ),
        AppUiHelpers.vSpaceSmall,
        Obx(
          () => Visibility(
            visible: c.tierInfo.value.nextTier.maxLimit != '0',
            child: Text(
              'msg_upgrade_deposit_to'
                  .trArgs([c.tierInfo.value.nextTier.maxLimit]),
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
              visible: _.nextTier != TierUpgrade.ProIndividual,
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
                          : AppColors.secondary.withOpacity(0.5),
                      size: 22.0,
                    ),
                    AppUiHelpers.hSpaceMedium,
                    Text('account_information'.tr),
                  ],
                ),
              ),
            ),
            for (var doc in _.nextTierDocList) _DocumentTile(doc)
          ],
        ),
      ),
    );
  }
}

class _DocumentTile extends GetView<ProfileController> {
  final String docType;
  const _DocumentTile(this.docType);
  @override
  Widget build(BuildContext context) {
    final String title = controller.docTitle(docType);
    final String status = controller.documentsMap[docType]?.status;

    return Padding(
      padding: const EdgeInsets.only(bottom: AppSizes.small),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            getIconByStatus(status),
            color: getColorByStatus(status),
            size: 22.0,
          ),
          AppUiHelpers.hSpaceMedium,
          Text(title),
        ],
      ),
    );
  }

  IconData getIconByStatus(String status) {
    if (status == null) return Icons.circle;
    switch (status.toLowerCase()) {
      case 'submitted':
        return Icons.check_circle_outline_outlined;
      case 'draft':
        return Icons.access_time_outlined;
      case 'declined':
        return Icons.cancel_outlined;
      default:
        return Icons.circle;
    }
  }

  Color getColorByStatus(String status) {
    if (status == null) return AppColors.secondary.withOpacity(0.5);
    switch (status.toLowerCase()) {
      case 'submitted':
        return AppColors.green;
      case 'draft':
        return AppColors.orange;
      case 'declined':
        return AppColors.red;
      default:
        return AppColors.secondary.withOpacity(0.5);
    }
  }
}
