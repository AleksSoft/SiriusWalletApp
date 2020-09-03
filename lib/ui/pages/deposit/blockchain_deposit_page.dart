import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/deposit_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

class BlockchainDepositPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('deposit_by_blockchain'.tr),
        actions: [
          IconButton(
            onPressed: () => DepositController.con.shareBlockchain(),
            icon: Icon(Icons.share),
          )
        ],
      ),
      body: SafeArea(
        child: GetBuilder<DepositController>(
          builder: (_) {
            var qrItems = <Widget>[];
            if (!_.depositCryptoAddress.address.isNullOrBlank) {
              qrItems.add(_QrBox(
                qrData: _.depositCryptoAddress.address,
                title: 'Address',
              ));
            }
            if (!_.depositCryptoAddress.addressExtension.isNullOrBlank) {
              qrItems.add(_QrBox(
                qrData: _.depositCryptoAddress.addressExtension,
                title: 'Memo',
              ));
            }
            return Stack(
              children: [
                Visibility(
                  visible: _.loading,
                  child: AppUiHelpers.linearProgress,
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(AppSizes.medium),
                        child: Text(
                          'Third-party credit card payments are not accepted. First credit card deposits may take up to 24 hours to be reflected in your portfolio balance.',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 350,
                        child: PageView(
                          controller: PageController(viewportFraction: 0.8),
                          children: qrItems,
                        ),
                      ),
                      ListTile(
                        title: Text(_.depositCryptoAddress.address),
                        subtitle: Text('Address'),
                        trailing: IconButton(
                          onPressed: () =>
                              _.copy(_.depositCryptoAddress.address),
                          icon: Icon(Icons.content_copy),
                        ),
                      ),
                      Visibility(
                        visible: !_.depositCryptoAddress.addressExtension
                            .isNullOrBlank,
                        child: ListTile(
                          title: Text(_.depositCryptoAddress.addressExtension),
                          subtitle: Text('Deposit Memo (text)'),
                          trailing: IconButton(
                            onPressed: () => _.copy(
                              _.depositCryptoAddress.addressExtension,
                            ),
                            icon: Icon(Icons.content_copy),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class _QrBox extends StatelessWidget {
  const _QrBox({this.qrData, this.title, Key key}) : super(key: key);
  final String qrData;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topCenter,
          child: Card(
            elevation: AppSizes.small,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: QrImage(
                data: qrData,
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                version: QrVersions.auto,
                size: 250.0,
              ),
            ),
          ),
        ),
        AppUiHelpers.vSpaceLarge,
        Text(
          title,
          style: Get.textTheme.headline6.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
