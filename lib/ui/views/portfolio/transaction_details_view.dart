import 'package:antares_wallet/app/routers/router.gr.dart';
import 'package:antares_wallet/models/transaction_details.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:easy_localization/easy_localization.dart';

class TransactionDetailsView extends StatelessWidget {
  final TransactionDetails details;

  TransactionDetailsView(this.details);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
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
                  SizedBox(width: 8.0),
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
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  _buildTile('amount'.tr(), details.amount.toString()),
                  _buildTile('status'.tr(), details.status),
                  Divider(height: 32.0),
                  _buildTile(
                    'trans_hash'.tr(),
                    details.transactionHash.toString(),
                    selectable: true,
                  ),
                  _buildTile('date'.tr(), details.dateTime),
                  Spacer(),
                  ButtonBar(
                    children: [
                      CupertinoButton(
                        onPressed: () => _copyHash(
                          context,
                          details.transactionHash.toString(),
                        ),
                        child: Text('copy_hash'.tr()),
                      ),
                      CupertinoButton(
                        onPressed: () => _viewExplorer(
                          context,
                          details.explorerItems,
                        ),
                        child: Text('open_explorer'.tr()),
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
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: titleStyle),
              SizedBox(width: 16.0),
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
        titlePrefix = 'deposit'.tr();
        break;
      case TransactionType.withdraw:
        titlePrefix = 'withdrawal'.tr();
        break;
    }
    return Builder(
      builder: (context) {
        if (titlePrefix == null) {
          return Text('details'.tr());
        }
        return Text('$titlePrefix ${'details'.tr()}');
      },
    );
  }

  _viewExplorer(BuildContext context, List<ExplorerItem> explorerItems) {
    List<Widget> widgets = [
      Text('explorer_links'.tr(), style: Theme.of(context).textTheme.headline5),
      SizedBox(height: 8.0),
    ]..addAll(explorerItems
        .map((e) => FlatButton(
              onPressed: () {
                ExtendedNavigator.ofRouter<Router>().pop();
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
        padding: EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
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
      throw 'msg_could_not_launch_url'.tr(args: [url]);
    }
  }

  _copyHash(BuildContext context, String hash) {
    ClipboardManager.copyToClipBoard(hash).then((result) {
      final snackBar = SnackBar(
        content: Text('msg_hash_copied'.tr()),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    });
  }
}
