import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/portfolio/transaction_details/transaction_details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile(this._item, {Key key}) : super(key: key);
  final FundsResponse_FundsModel _item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(TransactionDetailsPage.route, arguments: _item),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: AppSizes.small),
            padding: const EdgeInsets.all(AppSizes.medium),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LimitedBox(
                          maxWidth: 120,
                          child: Text(
                            _item.assetName,
                            maxLines: 1,
                            softWrap: false,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            style: Get.textTheme.button.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        AppUiHelpers.hSpaceExtraSmall,
                        Text(
                          _item.operation.toLowerCase() ==
                                  'deposit'.toLowerCase()
                              ? 'DEPOSIT'
                              : 'WITHDRAW',
                          style: Get.textTheme.button.copyWith(
                            color: _item.operation.toLowerCase() ==
                                    'deposit'.toLowerCase()
                                ? AppColors.green
                                : AppColors.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 10.0,
                          ),
                        ),
                        AppUiHelpers.hSpaceMedium,
                        Text(
                          Formatter.currency(_item.volume),
                          style: Get.textTheme.button.copyWith(fontSize: 16.0),
                        ),
                      ],
                    ),
                    AppUiHelpers.vSpaceSmall,
                    Text(
                      DateFormat().addPattern('dd.MM.yy HH:mm:ss').format(
                            DateTime.fromMillisecondsSinceEpoch(
                              _item.timestamp.seconds.toInt() * 1000,
                            ),
                          ),
                      style: Get.textTheme.caption.copyWith(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  _item.status,
                  style: Get.textTheme.caption.copyWith(
                    color: AppColors.secondary.withOpacity(0.8),
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1.0, color: AppColors.secondary.withOpacity(0.2)),
        ],
      ),
    );
  }
}
