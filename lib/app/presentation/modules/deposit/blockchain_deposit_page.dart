import 'package:antares_wallet/app/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'deposit_controller.dart';

class BlockchainDepositPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('deposit_by_blockchain'.tr),
        actions: [
          IconButton(
            onPressed: DepositController.con.shareBlockchain,
            icon: Icon(Icons.share),
          )
        ],
      ),
      body: SafeArea(
        child: GetBuilder<DepositController>(
          builder: (_) {
            var qrItems = <Widget>[];
            if (!_.depositCryptoAddress.address.nullOrEmpty) {
              qrItems.add(_QrBox(
                qrData: _.depositCryptoAddress.address,
                title: 'Address',
              ));
            }
            if (!_.depositCryptoAddress.tag.nullOrEmpty) {
              qrItems.add(_QrBox(
                qrData: _.depositCryptoAddress.tag,
                title: 'Memo (text)',
              ));
            }
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: _.loading
                  ? Container(
                      constraints: BoxConstraints.expand(),
                      color: AppColors.primary,
                      alignment: Alignment.center,
                      child: AppUiHelpers.circularProgress,
                    )
                  : SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(AppSizes.medium),
                            child: Text(
                              'Portfolio balance will be updated after transaction is confirmed in the blockchain',
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
                            visible: !_.depositCryptoAddress.tag.nullOrEmpty,
                            child: ListTile(
                              title: Text(_.depositCryptoAddress.tag),
                              subtitle: Text('Deposit Memo (text)'),
                              trailing: IconButton(
                                onPressed: () => _.copy(
                                  _.depositCryptoAddress.tag,
                                ),
                                icon: Icon(Icons.content_copy),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
