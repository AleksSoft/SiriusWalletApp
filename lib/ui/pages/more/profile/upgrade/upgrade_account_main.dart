import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/ui/pages/more/profile/profile_controller.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/upgrade_account_choose_doc.dart';
import 'package:antares_wallet/ui/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpgradeAccountMainPage extends StatelessWidget {
  static final String route = '/upgrade-account-main';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0.0),
      body: GetBuilder<ProfileController>(
        builder: (_) {
          return ListView(
            padding: const EdgeInsets.fromLTRB(
              AppSizes.medium,
              AppSizes.small,
              AppSizes.medium,
              AppSizes.medium,
            ),
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
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
                  onPressed: () =>
                      Get.toNamed(UpgradeAccountChooseDocPage.route),
                ),
              ),
            ],
          );
        },
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
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontSize: 10.0,
                ),
          ),
          AppUiHelpers.vSpaceExtraSmall,
          Text(
            c.accountData.levelStr,
            style: Theme.of(context).textTheme.headline6.copyWith(
                  fontWeight: FontWeight.w700,
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
          style: Theme.of(context).textTheme.caption.copyWith(
                fontSize: 10.0,
              ),
        ),
        AppUiHelpers.vSpaceExtraSmall,
        Text(
          'advanced'.tr,
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.accent,
              ),
        ),
        AppUiHelpers.vSpaceSmall,
        Text(
          'msg_upgrade_deposit_to'.trArgs(['7500']),
          softWrap: true,
          textAlign: TextAlign.center,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildRow('account_information'.tr, checked: true),
          _buildRow('identity_documents'.tr, checked: false),
          _buildRow('selfie'.tr, checked: false),
          _buildRow('proof_of_address'.tr, checked: false),
          _buildRow('questionnaire'.tr, checked: false),
        ],
      ),
    );
  }

  Widget _buildRow(String title, {bool checked = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSizes.small),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            checked ? CupertinoIcons.check_mark_circled : CupertinoIcons.circle,
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
