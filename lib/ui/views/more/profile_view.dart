import 'package:antares_wallet/app/routers/router.gr.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/views/more/profile_view_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:stacked/stacked.dart';
import 'package:easy_localization/easy_localization.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile'.tr()),
        elevation: 0.5,
      ),
      body: ViewModelBuilder<ProfileViewModel>.nonReactive(
        viewModelBuilder: () => ProfileViewModel(),
        onModelReady: (ProfileViewModel model) => model.initialise(),
        builder: (_, ProfileViewModel model, __) {
          return ListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(16.0),
            children: <Widget>[
              _AccountDataView(),
              SizedBox(height: 8.0),
              _DepositLimitsView(),
              SizedBox(height: 8.0),
              _PersonalDataView(),
            ],
          );
        },
      ),
    );
  }
}

class _AccountDataView extends ViewModelWidget<ProfileViewModel> {
  @override
  Widget build(BuildContext context, ProfileViewModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'Account level',
          style: Theme.of(context).textTheme.headline6,
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0.0),
          leading: Icon(
            CupertinoIcons.check_mark_circled,
            color: AppColors.accent,
            size: 40.0,
          ),
          title: Text(model.accountData.levelStr),
          subtitle: Text('verified'.tr()),
          trailing: Visibility(
            visible: model.accountData.hasNoLimit,
            child: OutlineButton(
              onPressed: () => ExtendedNavigator.ofRouter<Router>()
                  .pushNamed(Routes.upgradeAccountMainRoute),
              borderSide: BorderSide(color: AppColors.accent),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              textColor: AppColors.accent,
              child: Text('upgrade'.tr()),
            ),
          ),
        ),
      ],
    );
  }
}

class _DepositLimitsView extends ViewModelWidget<ProfileViewModel> {
  @override
  Widget build(BuildContext context, ProfileViewModel model) {
    final account = model.accountData;
    if (account.hasNoLimit) return SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'Deposit limits',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: 8.0),
        Text(
          'Last 30d',
          style: Theme.of(context).textTheme.caption,
        ),
        SizedBox(height: 6.0),
        LinearPercentIndicator(
          lineHeight: 5.0,
          padding: EdgeInsets.all(0.0),
          percent: account.depositPercent,
          backgroundColor: AppColors.secondary.withOpacity(0.1),
          progressColor: AppColors.accent,
        ),
        SizedBox(height: 6.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '${account.currentDeposit} ${account.currency}',
              style: Theme.of(context).textTheme.caption,
            ),
            Text(
              '${account.depositLimit} ${account.currency}',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
        SizedBox(height: 8.0),
      ],
    );
  }
}

class _PersonalDataView extends ViewModelWidget<ProfileViewModel> {
  @override
  Widget build(BuildContext context, ProfileViewModel model) {
    var data = model.personalData;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'Personal data',
          style: Theme.of(context).textTheme.headline6,
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0.0),
          title: Text('full_name'.tr()),
          subtitle: Text(data.fullName),
        ),
        Divider(height: 1.0),
        ListTile(
          contentPadding: EdgeInsets.all(0.0),
          title: Text('email'.tr()),
          subtitle: Text(data.email),
        ),
        Divider(height: 1.0),
        ListTile(
          contentPadding: EdgeInsets.all(0.0),
          title: Text('contact_phone'.tr()),
          subtitle: Text(data.contactPhone),
        ),
        Divider(height: 1.0),
        ListTile(
          contentPadding: EdgeInsets.all(0.0),
          title: Text('country'.tr()),
          subtitle: Text(data.country),
        ),
        Divider(height: 1.0),
      ],
    );
  }
}
