import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/widgets/asset_pair_rich_text.dart';
import 'package:antares_wallet/ui/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class OrderHistoryData {
  final String baseAssetName;
  final String quoteAssetName;
  final String baseVolume;
  final String quoteVolume;
  final String price;
  final String direction;
  final String date;

  OrderHistoryData({
    @required this.baseAssetName,
    @required this.quoteAssetName,
    @required this.baseVolume,
    @required this.quoteVolume,
    @required this.price,
    @required this.direction,
    @required this.date,
  });

  OrderHistoryData.fromTradeModel(TradesResponse_TradeModel model)
      : this.baseAssetName = model.baseAssetName,
        this.quoteAssetName = model.quoteAssetName,
        this.baseVolume = model.baseVolume,
        this.quoteVolume = model.quoteVolume,
        this.price = model.price,
        this.direction = model.direction,
        this.date = DateFormat().addPattern('dd.MM.yy HH:mm:ss').format(
              DateTime.fromMillisecondsSinceEpoch(
                model.timestamp.seconds.toInt() * 1000,
              ),
            );

  bool get isSell => direction.toLowerCase() == 'sell'.toLowerCase();
}

class OrderHistoryTile extends StatelessWidget {
  final OrderHistoryData data;

  const OrderHistoryTile({@required this.data, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyleButton = Theme.of(context).textTheme.button;

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
                    symbol1: data.baseAssetName,
                    symbol2: data.quoteAssetName,
                  ),
                  AppUiHelpers.hSpaceSmall,
                  Visibility(
                    visible: true,
                    child: Text(
                      data.direction.toUpperCase(),
                      style: textStyleButton.copyWith(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: data.isSell ? AppColors.red : AppColors.green,
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
                        data.baseVolume,
                      ),
                      VerticalDivider(),
                      _buildInfoItem(
                        'Price (${data.quoteAssetName})',
                        data.price,
                      ),
                      VerticalDivider(),
                      _buildInfoItem(
                        'Total (${data.quoteAssetName})',
                        data.quoteVolume,
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
