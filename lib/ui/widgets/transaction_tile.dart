import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/models/transaction_details.dart';
import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile(this._item, {Key key}) : super(key: key);
  final TransactionDetails _item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // TODO: tbd routing
      // onTap: () => ExtendedNavigator.ofRouter<Router>().pushNamed(
      //   Routes.transactionDetailsRoute,
      //   arguments: TransactionDetailsViewArguments(details: _item),
      // ),
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
                        Text(
                          _item.asset.symbol,
                          style: Theme.of(context).textTheme.button.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.0,
                              ),
                        ),
                        AppUiHelpers.hSpaceExtraSmall,
                        Text(
                          _item.isDeposit ? 'DEPOSIT' : 'WITHDRAW',
                          style: Theme.of(context).textTheme.button.copyWith(
                                color: _item.isDeposit
                                    ? AppColors.green
                                    : AppColors.red,
                                fontWeight: FontWeight.w700,
                                fontSize: 10.0,
                              ),
                        ),
                        AppUiHelpers.hSpaceMedium,
                        Text(
                          _item.amount.toString(),
                          style: Theme.of(context).textTheme.button.copyWith(
                                fontSize: 16.0,
                              ),
                        ),
                      ],
                    ),
                    AppUiHelpers.vSpaceSmall,
                    Text(
                      _item.dateTime,
                      style: Theme.of(context).textTheme.caption.copyWith(
                            fontSize: 14.0,
                          ),
                    ),
                  ],
                ),
                Text(
                  _item.status,
                  style: Theme.of(context).textTheme.caption.copyWith(
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
