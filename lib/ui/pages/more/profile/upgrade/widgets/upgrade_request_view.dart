import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/presentation/widgets/default_card.dart';
import 'package:antares_wallet/controllers/profile_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpgradeRequestView extends GetView<ProfileController> {
  UpgradeRequestView(this.upgradeRequest, {Key key}) : super(key: key);
  final UpgradeRequest upgradeRequest;
  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      borderRadius: BorderRadius.circular(AppSizes.small),
      padding: const EdgeInsets.only(
        left: 12.0,
        right: 12.0,
        top: AppSizes.extraSmall,
        bottom: AppSizes.extraSmall,
      ),
      margin: const EdgeInsets.all(0.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: AppSizes.small,
              bottom: AppSizes.extraSmall,
            ),
            child: Center(
              child: Icon(
                Icons.access_time_outlined,
                size: 44.0,
                color: Colors.amber[700],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                controller.tierInfo?.upgradeRequest?.tier ?? '',
                style: Get.textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text('in_review'.tr),
            ],
          ),
          Spacer(),
          Text(
            'h_left'.trArgs([
              '${DateTime.fromMillisecondsSinceEpoch(upgradeRequest.submitDate.seconds.toInt() * 1000).difference(DateTime.now()).inDays}',
            ]),
          ),
        ],
      ),
    );
  }
}
