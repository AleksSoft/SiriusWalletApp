import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/ui/views/asset_info/asset_info_view.dart';
import 'package:antares_wallet/ui/views/initial/initial_view.dart';
import 'package:antares_wallet/ui/views/login/login_view.dart';
import 'package:antares_wallet/ui/views/more/backup/backup_confirm_key_view.dart';
import 'package:antares_wallet/ui/views/more/backup/backup_copy_key_view.dart';
import 'package:antares_wallet/ui/views/more/upgrade/upgrade_account_choose_doc.dart';
import 'package:antares_wallet/ui/views/more/upgrade/upgrade_account_doc.dart';
import 'package:antares_wallet/ui/views/more/upgrade/upgrade_account_quest.dart';
import 'package:antares_wallet/ui/views/more/upgrade/upgrade_account_result.dart';
import 'package:antares_wallet/ui/views/pair_trading/pair_trading_view.dart';
import 'package:antares_wallet/ui/views/portfolio/transaction_details_view.dart';
import 'package:antares_wallet/ui/views/select_asset/select_asset_view.dart';
import 'package:antares_wallet/ui/views/more/upgrade/upgrade_account_main.dart';

import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  InitialView initialViewRoute;
  LoginView loginViewRoute;
  // RegisterEmailView registerEmailViewRoute;
  // RegisterPasswordView registerPasswordViewRoute;
  // RegisterDetailsView registerDetailsViewRoute;
  // RegisterPhoneView registerPhoneViewRoute;
  // SecretPhraseView secredPhraseViewRoute;
  // PinView pinViewRoute;
  @MaterialRoute(returnType: AssetData)
  SelectAssetView selectAssetRoute;
  @MaterialRoute(fullscreenDialog: true)
  BackUpCopyKeyView backUpCopyKeyRoute;
  BackUpConfirmKeyView backUpConfirmKeyRoute;
  @MaterialRoute(fullscreenDialog: true)
  UpgradeAccountMainView upgradeAccountMainRoute;
  UpgradeAccountChooseDocView upgradeAccountChooseDocRoute;
  UpgradeAccountDocView upgradeAccountDocRoute;
  UpgradeAccountQuestView upgradeAccountQuestRoute;
  UpgradeAccountResultView upgradeAccountResultRoute;
  AssetInfoView assetInfoRoute;
  @MaterialRoute(fullscreenDialog: true)
  TransactionDetailsView transactionDetailsRoute;
  PairTradingView pairTradingView;
}
