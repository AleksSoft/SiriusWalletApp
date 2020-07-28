import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/assets_controller.dart';
import 'package:antares_wallet/controllers/portfolio_controller.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AssetListTile extends StatelessWidget {
  final VoidCallback onTap;
  final String iconUrl;
  final Asset asset;

  const AssetListTile(
    this.iconUrl,
    this.asset, {
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var balance = PortfolioController.con.assetBalance(asset.id);
    var amount = AssetsController.con.amountInBaseById(asset.id);

    return Column(
      children: [
        ListTile(
          onTap: onTap,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSizes.medium,
            vertical: AppSizes.extraSmall,
          ),
          leading: Image.network(
            iconUrl,
            height: AppSizes.large,
            width: AppSizes.large,
          ),
          title: Text(
            asset.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                _getAvailableBalance(balance),
                style: Get.textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              AppUiHelpers.vSpaceSmall,
              Text(
                _getAmountInBase(balance, amount),
                style: Get.textTheme.caption,
              )
            ],
          ),
        ),
        Divider(height: 1.0, color: AppColors.secondary.withOpacity(0.4)),
      ],
    );
  }

  String _getAvailableBalance(Balance balance) {
    double availableBalance =
        balance == null ? 0.0 : double.parse(balance.available);
    return '${asset.displayId} ${NumberFormat.currency(locale: 'eu', symbol: '').format(availableBalance)}';
  }

  String _getAmountInBase(
      Balance balance, AmountInBaseAssetResponse_AmountInBasePayload amount) {
    double availableBalance =
        balance == null ? 0.0 : double.parse(balance.available);
    double amountInBase = availableBalance *
        (amount == null
            ? 0.0
            : double.parse(GetUtils.isNullOrBlank(amount.amountInBase)
                ? '0.0'
                : amount.amountInBase));
    return '${AssetsController.con.baseAssetId} ${NumberFormat.currency(locale: 'eu', customPattern: '#,##.#').format(amountInBase)}';
  }
}
