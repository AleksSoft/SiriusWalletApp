import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/views/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeLyCIView extends StatelessWidget {
  const HomeLyCIView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildHeader(context),
          _buildListTile(context),
          Divider(
            height: 1.0,
            indent: 16.0,
            endIndent: 16.0,
          ),
          _buildListTile(context),
          Divider(
            height: 1.0,
            indent: 16.0,
            endIndent: 16.0,
          ),
          _buildListTile(context),
          Divider(
            height: 1.0,
            indent: 16.0,
            endIndent: 16.0,
          ),
          CupertinoButton(
            onPressed: () {},
            child: Text('Learn more'),
          ),
        ],
      ),
    );
  }

  ListTile _buildListTile(BuildContext context) {
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/logo_lykke.png',
                height: 16.0,
                width: 16.0,
              ),
              SizedBox(width: 4.0),
              Text(
                'LyCI Service Token',
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                      fontSize: 14.0,
                    ),
              ),
            ],
          ),
          SizedBox(height: 4.0),
          Text(
            'LYCI 0,00',
            style: Theme.of(context).textTheme.subtitle2.copyWith(
                  fontSize: 14.0,
                ),
          )
        ],
      ),
      subtitle: Text('USD 0,00'),
      trailing: SizedBox(
        height: 32.0,
        child: CupertinoButton.filled(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          borderRadius: const BorderRadius.all(Radius.circular(24.0)),
          child: Text(
            'Buy now',
            style: Theme.of(context).textTheme.button.copyWith(
                  fontSize: 16.0,
                  color: AppColors.primary,
                ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: AppColors.accent.withOpacity(0.8),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.0),
        ),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'LyCI',
            style: Theme.of(context).textTheme.headline3.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                  letterSpacing: 8.0,
                ),
          ),
          Container(
            height: 0.5,
            width: 120,
            color: AppColors.primary,
            margin: EdgeInsets.all(16.0),
          ),
          Text(
            'WHAT MATTERS TO YOU',
            style: Theme.of(context).textTheme.subtitle2.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.primary,
                  letterSpacing: 2.0,
                ),
          ),
        ],
      ),
    );
  }
}
