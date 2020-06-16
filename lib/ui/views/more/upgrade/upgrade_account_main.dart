import 'package:antares_wallet/app/routers/router.gr.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/views/more/profile_view_model.dart';
import 'package:antares_wallet/ui/widgets/default_card.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:easy_localization/easy_localization.dart';

class UpgradeAccountMainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: ViewModelBuilder<ProfileViewModel>.nonReactive(
          viewModelBuilder: () => ProfileViewModel(),
          builder: (_, __, ___) {
            return ListView(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 16.0),
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              children: [
                _LevelCard(),
                const SizedBox(height: 32.0),
                _LevelHeaderView(),
                const SizedBox(height: 32.0),
                _ListView(),
                const SizedBox(height: 32.0),
                DefaultCard(
                  blurRadius: 10,
                  shadowColor: AppColors.accent.withOpacity(0.5),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  child: CupertinoButton.filled(
                    child: Text('upgrade_account'.tr()),
                    onPressed: () =>
                        ExtendedNavigator.ofRouter<Router>().pushNamed(
                      Routes.upgradeAccountChooseDocRoute,
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

class _LevelCard extends ViewModelWidget<ProfileViewModel> {
  @override
  Widget build(context, model) {
    return DefaultCard(
      padding: const EdgeInsets.all(16.0),
      shadowColor: AppColors.secondary.withOpacity(0.3),
      blurRadius: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'title_your_account'.tr(),
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontSize: 10.0,
                ),
          ),
          const SizedBox(height: 4.0),
          Text(
            model.accountData.levelStr,
            style: Theme.of(context).textTheme.headline6.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text('msg_explore_crypto'.tr()),
          ),
        ],
      ),
    );
  }
}

class _LevelHeaderView extends ViewModelWidget<ProfileViewModel> {
  @override
  Widget build(context, model) {
    return Column(
      children: [
        Text(
          'title_upgrade_to'.tr(),
          style: Theme.of(context).textTheme.caption.copyWith(
                fontSize: 10.0,
              ),
        ),
        const SizedBox(height: 4.0),
        Text(
          'advanced'.tr(),
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.accent,
              ),
        ),
        const SizedBox(height: 8.0),
        Text(
          'msg_upgrade_deposit_to'.tr(args: ['7500']),
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
          _buildRow('account_information'.tr(), checked: true),
          _buildRow('identity_documents'.tr(), checked: false),
          _buildRow('selfie'.tr(), checked: false),
          _buildRow('proof_of_address'.tr(), checked: false),
          _buildRow('questionnaire'.tr(), checked: false),
        ],
      ),
    );
  }

  Widget _buildRow(String title, {bool checked = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            checked ? CupertinoIcons.check_mark_circled : CupertinoIcons.circle,
            color: checked ? AppColors.accent : AppColors.secondary,
            size: 22.0,
          ),
          SizedBox(width: 16.0),
          Text(title),
        ],
      ),
    );
  }
}
