import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/models/transaction_details.dart';
import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

class TransactionDetailsPage extends StatelessWidget {
  final TransactionDetails details;

  TransactionDetailsPage(this.details);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _buildTitleByType(details.transactionType),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo_lykke.png',
                    height: 56.0,
                    width: 56.0,
                  ),
                  AppUiHelpers.hSpaceSmall,
                  Text(
                    details.asset.displayName,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.medium),
              child: Column(
                children: [
                  _buildTile('amount'.tr, details.amount.toString()),
                  _buildTile('status'.tr, details.status),
                  Divider(height: AppSizes.extraLarge),
                  _buildTile(
                    'trans_hash'.tr,
                    details.transactionHash.toString(),
                    selectable: true,
                  ),
                  _buildTile('date'.tr, details.dateTime),
                  Spacer(),
                  ButtonBar(
                    children: [
                      CupertinoButton(
                        onPressed: () => _copyHash(
                          context,
                          details.transactionHash.toString(),
                        ),
                        child: Text('copy_hash'.tr),
                      ),
                      CupertinoButton(
                        onPressed: () => _viewExplorer(
                          context,
                          details.explorerItems,
                        ),
                        child: Text('open_explorer'.tr),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTile(String title, String subtitle, {bool selectable = false}) {
    return Builder(
      builder: (context) {
        final titleStyle = Theme.of(context).textTheme.caption.copyWith(
              fontSize: 16.0,
            );
        final subtitleStyle = Theme.of(context).textTheme.button.copyWith(
              fontSize: 18.0,
            );
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSizes.small),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: titleStyle),
              AppUiHelpers.hSpaceMedium,
              Expanded(
                child: selectable
                    ? SelectableText(
                        subtitle,
                        style: subtitleStyle,
                        textAlign: TextAlign.right,
                      )
                    : Text(
                        subtitle,
                        style: subtitleStyle,
                        textAlign: TextAlign.right,
                      ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTitleByType(TransactionType type) {
    String titlePrefix;
    switch (type) {
      case TransactionType.deposit:
        titlePrefix = 'deposit'.tr;
        break;
      case TransactionType.withdraw:
        titlePrefix = 'withdrawal'.tr;
        break;
    }
    return Builder(
      builder: (context) {
        if (titlePrefix == null) {
          return Text('details'.tr);
        }
        return Text('$titlePrefix ${'details'.tr}');
      },
    );
  }

  _viewExplorer(BuildContext context, List<ExplorerItem> explorerItems) {
    List<Widget> widgets = [
      Text('explorer_links'.tr, style: Theme.of(context).textTheme.headline5),
      AppUiHelpers.vSpaceSmall,
    ]..addAll(explorerItems
        .map((e) => FlatButton(
              onPressed: () {
                Get.back();
                _launchURL(e.url);
              },
              child: Text(
                e.name,
                style: Theme.of(context).textTheme.button.copyWith(
                      fontSize: 16.0,
                    ),
              ),
            ))
        .toList());

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        padding: const EdgeInsets.only(
          top: AppSizes.medium,
          left: AppSizes.small,
          right: AppSizes.small,
        ),
        height: (60 + 50 * (widgets.length - 2)).toDouble(),
        color: AppColors.primary,
        child: ListView(children: widgets),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false, forceSafariVC: false);
    } else {
      throw 'msg_could_not_launch_url'.trArgs([url]);
    }
  }

  _copyHash(BuildContext context, String hash) {
    ClipboardManager.copyToClipBoard(hash).then((result) {
      final String message = 'msg_hash_copied'.tr;
      Get.snackbar('', message, duration: Duration(seconds: 2));
    });
  }
}
