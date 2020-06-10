import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/navigation/navigation.dart';
import 'package:antares_wallet/ui/views/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpgradeAccountMainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: ListView(
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
              child: Text('Upgrade account'),
              onPressed: () => Navigator.pushNamed(
                context,
                Routes.upAccChooseDoc,
                arguments: {hideNavTabBar: true},
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LevelCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      padding: const EdgeInsets.all(16.0),
      shadowColor: AppColors.secondary.withOpacity(0.3),
      blurRadius: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'YOUR ACCOUNT',
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontSize: 10.0,
                ),
          ),
          const SizedBox(height: 4.0),
          Text(
            'Beginner',
            style: Theme.of(context).textTheme.headline6.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text('You can explore the world of crypto'),
          ),
        ],
      ),
    );
  }
}

class _LevelHeaderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'YOUR ACCOUNT',
          style: Theme.of(context).textTheme.caption.copyWith(
                fontSize: 10.0,
              ),
        ),
        const SizedBox(height: 4.0),
        Text(
          'Advanced',
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.accent,
              ),
        ),
        const SizedBox(height: 8.0),
        Text(
          '''Upgrade to deposit up to 7 500 EUR monthly and trade without limits and fees''',
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
          _buildRow('Account information', checked: true),
          _buildRow('Identity Documents', checked: false),
          _buildRow('Selfie', checked: false),
          _buildRow('Proof of address', checked: false),
          _buildRow('Questionnaire', checked: false),
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
