import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sirius/business/dto/account_data.dart';
import 'package:sirius/business/dto/personal_data.dart';
import 'package:sirius/business/view_models/more/profile_view_model.dart';
import 'package:sirius/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        elevation: 0.5,
      ),
      body: ViewModelBuilder.reactive(
        viewModelBuilder: () => ProfileViewModel(),
        onModelReady: (model) async => await model.initialise(),
        builder: (context, model, child) {
          if (model.isBusy) {
            return Center(
              child: SingleChildScrollView(),
            );
          }
          return ListView(
            padding: EdgeInsets.all(16.0),
            children: <Widget>[
              AccountDataView(model),
              SizedBox(height: 8.0),
              DepositLimitsView(model.accountData),
              SizedBox(height: 8.0),
              PersonalDataView(model.personalData),
            ],
          );
        },
      ),
    );
  }
}

class AccountDataView extends StatelessWidget {
  final ProfileViewModel model;

  AccountDataView(this.model);

  @override
  Widget build(context) {
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
            Icons.check_circle_outline,
            color: Colors.blueAccent,
            size: 40.0,
          ),
          title: Text(model.accountData.level),
          subtitle: Text('Verified'),
          trailing: OutlineButton(
            onPressed: () async => await model.upgradeAccount(),
            borderSide: BorderSide(color: Colors.blueAccent),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
            textColor: Colors.blueAccent,
            child: Text('Upgrade'),
          ),
        ),
      ],
    );
  }
}

class DepositLimitsView extends StatelessWidget {
  final AccountData account;

  DepositLimitsView(this.account);

  @override
  Widget build(context) {
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
          backgroundColor: Colors.grey.withOpacity(0.1),
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

class PersonalDataView extends StatelessWidget {
  final PersonalData data;

  PersonalDataView(this.data);

  @override
  Widget build(context) {
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
          title: Text('Full Name'),
          subtitle: Text(data.fullName),
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0.0),
          title: Text('Email'),
          subtitle: Text(data.email),
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0.0),
          title: Text('Contact Phone'),
          subtitle: Text(data.contactPhone),
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0.0),
          title: Text('Country'),
          subtitle: Text(data.country),
        ),
      ],
    );
  }
}
