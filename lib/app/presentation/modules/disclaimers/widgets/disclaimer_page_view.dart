import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DisclaimerPageView extends StatelessWidget {
  const DisclaimerPageView(this.assetDisclaimer, {Key key}) : super(key: key);
  final AssetDisclaimer assetDisclaimer;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(
        left: AppSizes.medium,
        top: 0,
        right: AppSizes.medium,
        bottom: AppSizes.extraLarge * 2 + AppSizes.medium,
      ),
      child: SingleChildScrollView(
        child: Text(
          assetDisclaimer.text,
          softWrap: true,
          textAlign: TextAlign.center,
          style: Get.textTheme.headline6.copyWith(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
