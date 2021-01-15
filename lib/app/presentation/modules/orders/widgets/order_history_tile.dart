import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/presentation/widgets/asset_pair_rich_text.dart';
import 'package:antares_wallet/app/presentation/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class OrderHistoryData {
  final String baseAssetName;
  final String quoteAssetName;
  final String amount;
  final String total;
  final String price;
  final bool isBuy;
  final String date;

  OrderHistoryData({
    @required this.baseAssetName,
    @required this.quoteAssetName,
    @required this.amount,
    @required this.total,
    @required this.price,
    @required this.isBuy,
    @required this.date,
  });

  OrderHistoryData.fromTradeModel(TradesResponse_TradeModel model)
      : this.baseAssetName = model.baseAssetName,
        this.quoteAssetName = model.quoteAssetName,
        this.amount = model.baseVolume,
        this.total = model.quoteVolume,
        this.price = model.price,
        this.isBuy = model.direction.toLowerCase() == 'buy',
        this.date = DateFormat().addPattern('dd.MM.yy HH:mm:ss').format(
              DateTime.fromMillisecondsSinceEpoch(
                model.timestamp.seconds.toInt() * 1000,
              ),
            );
}

class OrderHistoryTile extends StatelessWidget {
  final OrderHistoryData data;

  const OrderHistoryTile({@required this.data, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyleButton = Get.textTheme.button;

    return DefaultCard(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.medium,
        vertical: AppSizes.extraSmall,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: AppSizes.small,
        vertical: 6.0,
      ),
      borderRadius: BorderRadius.circular(AppSizes.small),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppUiHelpers.vSpaceSmall,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  PairRichText(
                    displayId1: data.baseAssetName,
                    displayId2: data.quoteAssetName,
                  ),
                  AppUiHelpers.hSpaceSmall,
                  Visibility(
                    visible: true,
                    child: Text(
                      data.isBuy ? 'Buy' : 'Sell',
                      style: textStyleButton.copyWith(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: data.isBuy ? AppColors.green : AppColors.red,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    data.date.toString(),
                    style: textStyleButton.copyWith(
                      fontSize: 14.0,
                      color: AppColors.secondary,
                    ),
                  ),
                ],
              ),
              AppUiHelpers.vSpaceSmall,
              IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.medium,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      _buildInfoItem(
                        'Amount (${data.baseAssetName})',
                        data.amount,
                      ),
                      VerticalDivider(),
                      _buildInfoItem(
                        'Price (${data.quoteAssetName})',
                        data.price,
                      ),
                      VerticalDivider(),
                      _buildInfoItem(
                        'Total (${data.quoteAssetName})',
                        data.total,
                      ),
                    ],
                  ),
                ),
              ),
              AppUiHelpers.vSpaceSmall,
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(String title, String value) {
    return Flexible(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            value,
            style: Get.textTheme.button.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
            ),
          ),
          AppUiHelpers.vSpaceExtraSmall,
          Text(title, style: Get.textTheme.caption),
        ],
      ),
    );
  }
}
