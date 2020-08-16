import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/ui/pages/portfolio/transaction_details/transaction_details_controller.dart';
import 'package:antares_wallet/utils/formatter.dart';
import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

class TransactionDetailsPage extends StatelessWidget {
  static final String route = '/transaction-details';

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TransactionDetailsController>(
        init: TransactionDetailsController(),
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0.5,
              title: _buildTitleByType(_.details.type),
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
                          'assets/images/ic_launcher.png',
                          height: 56.0,
                          width: 56.0,
                        ),
                        AppUiHelpers.hSpaceSmall,
                        Text(
                          _.details.assetName,
                          style: Get.textTheme.headline6.copyWith(
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
                        _buildTile(
                          'amount'.tr,
                          Formatter.currency(_.details.volume),
                        ),
                        _buildTile('status'.tr, _.details.status),
                        Divider(height: AppSizes.extraLarge),
                        _buildTile(
                          'trans_hash'.tr,
                          _.details.blockchainHash,
                          selectable: true,
                        ),
                        _buildTile(
                            'date'.tr,
                            DateFormat().addPattern('dd.MM.yy HH:mm:ss').format(
                                  DateTime.fromMillisecondsSinceEpoch(
                                    _.details.timestamp.seconds.toInt() * 1000,
                                  ),
                                )),
                        Spacer(),
                        ButtonBar(
                          children: [
                            CupertinoButton(
                              onPressed: () => _copyHash(
                                _.details.blockchainHash,
                              ),
                              child: Text('copy_hash'.tr),
                            ),
//                            CupertinoButton(
//                              onPressed: () => _viewExplorer(
//                                context,
//                                _.details.explorerItems,
//                              ),
//                              child: Text('open_explorer'.tr),
//                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  Widget _buildTile(String title, String subtitle, {bool selectable = false}) {
    return Builder(
      builder: (context) {
        final titleStyle = Get.textTheme.caption.copyWith(fontSize: 16.0);
        final subtitleStyle = Get.textTheme.button.copyWith(fontSize: 18.0);
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

  Widget _buildTitleByType(String type) {
    String titlePrefix;
    if (type.toLowerCase() == 'deposit') {
      titlePrefix = 'deposit'.tr;
    } else {
      titlePrefix = 'withdrawal'.tr;
    }
    return titlePrefix == null
        ? Text('details'.tr)
        : Text('$titlePrefix ${'details'.tr}');
  }

  // _viewExplorer(BuildContext context, List<ExplorerItem> explorerItems) {
  //   List<Widget> widgets = [
  //     Text('explorer_links'.tr, style: Get.textTheme.headline5),
  //     AppUiHelpers.vSpaceSmall,
  //   ]..addAll(explorerItems
  //       .map((e) => FlatButton(
  //             onPressed: () {
  //               Get.back();
  //               _launchURL(e.url);
  //             },
  //             child: Text(
  //               e.name,
  //               style: Get.textTheme.button.copyWith(fontSize: 16.0),
  //             ),
  //           ))
  //       .toList());

  //   Get.bottomSheet(
  //     Container(
  //       padding: const EdgeInsets.only(
  //         top: AppSizes.medium,
  //         left: AppSizes.small,
  //         right: AppSizes.small,
  //       ),
  //       height: (60 + 50 * (widgets.length - 2)).toDouble(),
  //       color: AppColors.primary,
  //       child: ListView(children: widgets),
  //     ),
  //     backgroundColor: Colors.transparent,
  //   );
  // }

  // _launchURL(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url, forceWebView: false, forceSafariVC: false);
  //   } else {
  //     throw 'msg_could_not_launch_url'.trArgs([url]);
  //   }
  // }

  _copyHash(String hash) {
    ClipboardManager.copyToClipBoard(hash).then((result) {
      final String message = 'msg_hash_copied'.tr;
      Get.snackbar('', message, duration: Duration(seconds: 2));
    });
  }
}
