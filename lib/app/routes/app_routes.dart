part of './app_pages.dart';

abstract class Routes {
  static const String INITIAL = '/';
  static const String START = '/start';
  static const String LOGIN = '/login';
  static const String REGISTER = '/register';
  static const String REGISTER_RESULT = '/register-result';
  static const String SAVED_ERRORS = '/saved-errors';
  static const String LOG_CONSOLE = '/log';
  static const String LOCAL_AUTH = '/local-auth';
  static const String DISCLAIMERS = '/disclaimers';
  static const String DEV_SETTINGS = '/dev-settings';
  static const String ROOT = '/root';
  static const String ASSET_INFO = '/asset-info';
  static const String TRADING = '/trading';
  static const String SETTINGS = '/settings';
  static const String PROFILE = '/profile';
  static const String SUPPORT = '/support';
  static const String UPGRADE_ACC_MAIN = '/upgrade-account-main';
  static const String UPGRADE_ACC_ADDRESS = '/upgrade-account-address';
  static const String UPGRADE_ACC_CHOOSE_DOC = '/upgrade-account-choose-doc';
  static const String UPGRADE_ACC_DOC = '/upgrade-account-doc';
  static const String UPGRADE_ACC_QUEST = '/upgrade-account-quest';
  static const String UPGRADE_ACC_RESULT = '/upgrade-account-result';
  static const String SELECT_ASSET = '/select-asset';
  static const String ORDER_DETAILS = '/order-details';
  static const String TRANSACTION_DETAILS = '/transaction-details';
  static const String WATCH_LISTS = '/watch-lists';
  static const String WATCH_LIST_EDIT = '/watch-list-edit';
  static const String WITHDRAW_SWIFT = '/withdraw-swift';
  static const String WITHDRAW_SWIFT_RESULT = '/withdraw-swift-result';
  static const String WITHDRAW_BLOCKCHAIN = '/withdraw-blockchain';
  static const String WITHDRAW_BLOCKCHAIN_DETAILS =
      '/withdraw-blockchain-details';
  static const String DEPOSIT_SWIFT = '/deposit-swift';
  static const String DEPOSIT_CARD = '/deposit-card';
  static const String DEPOSIT_BLOCKCHAIN = '/deposit-blockchain';
  static const String ORDER_HISTORY_FILTER = '/order-history-filter';
  static const String PORTFOLIO_HISTORY_FILTER = '/portfolio-history-filter';
  static const String CANDLE_CHART = '/candle-chart';
}
