///
//  Generated code. Do not modify.
//  source: apiservice.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Side$json = const {
  '1': 'Side',
  '2': const [
    const {'1': 'buy', '2': 0},
    const {'1': 'sell', '2': 1},
  ],
};

const CandleType$json = const {
  '1': 'CandleType',
  '2': const [
    const {'1': 'Bid', '2': 0},
    const {'1': 'Ask', '2': 1},
    const {'1': 'Mid', '2': 2},
    const {'1': 'Trades', '2': 3},
  ],
};

const CandleInterval$json = const {
  '1': 'CandleInterval',
  '2': const [
    const {'1': 'Min5', '2': 0},
    const {'1': 'Min15', '2': 1},
    const {'1': 'Min30', '2': 2},
    const {'1': 'Hour', '2': 3},
    const {'1': 'Hour4', '2': 4},
    const {'1': 'Hour6', '2': 5},
    const {'1': 'Hour12', '2': 6},
    const {'1': 'Day', '2': 7},
    const {'1': 'Week', '2': 8},
    const {'1': 'Month', '2': 9},
  ],
};

const PricesRequest$json = const {
  '1': 'PricesRequest',
  '2': const [
    const {'1': 'assetPairIds', '3': 1, '4': 3, '5': 9, '10': 'assetPairIds'},
  ],
};

const PriceUpdatesRequest$json = const {
  '1': 'PriceUpdatesRequest',
  '2': const [
    const {'1': 'assetPairIds', '3': 1, '4': 3, '5': 9, '10': 'assetPairIds'},
  ],
};

const CandlesRequest$json = const {
  '1': 'CandlesRequest',
  '2': const [
    const {'1': 'assetPairId', '3': 1, '4': 1, '5': 9, '10': 'assetPairId'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.antaresWallet.CandleType', '10': 'type'},
    const {'1': 'interval', '3': 3, '4': 1, '5': 14, '6': '.antaresWallet.CandleInterval', '10': 'interval'},
    const {'1': 'from', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'from'},
    const {'1': 'to', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'to'},
  ],
};

const LimitOrdersRequest$json = const {
  '1': 'LimitOrdersRequest',
  '2': const [
    const {'1': 'assetPairId', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'assetPairId'},
  ],
  '8': const [
    const {'1': 'optional_assetPairId'},
  ],
};

const LimitOrderRequest$json = const {
  '1': 'LimitOrderRequest',
  '2': const [
    const {'1': 'assetPairId', '3': 1, '4': 1, '5': 9, '10': 'assetPairId'},
    const {'1': 'assetId', '3': 2, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'volume', '3': 3, '4': 1, '5': 1, '10': 'volume'},
    const {'1': 'price', '3': 4, '4': 1, '5': 1, '10': 'price'},
  ],
};

const MarketOrderRequest$json = const {
  '1': 'MarketOrderRequest',
  '2': const [
    const {'1': 'assetPairId', '3': 1, '4': 1, '5': 9, '10': 'assetPairId'},
    const {'1': 'assetId', '3': 2, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'volume', '3': 3, '4': 1, '5': 1, '10': 'volume'},
  ],
};

const CancelOrdersRequest$json = const {
  '1': 'CancelOrdersRequest',
  '2': const [
    const {'1': 'assetPairId', '3': 1, '4': 1, '5': 9, '10': 'assetPairId'},
    const {'1': 'side', '3': 2, '4': 1, '5': 14, '6': '.antaresWallet.Side', '10': 'side'},
  ],
};

const CancelOrderRequest$json = const {
  '1': 'CancelOrderRequest',
  '2': const [
    const {'1': 'orderId', '3': 1, '4': 1, '5': 9, '10': 'orderId'},
  ],
};

const WatchlistRequest$json = const {
  '1': 'WatchlistRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const AddWatchlistRequest$json = const {
  '1': 'AddWatchlistRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'order', '3': 2, '4': 1, '5': 5, '10': 'order'},
    const {'1': 'assetIds', '3': 3, '4': 3, '5': 9, '10': 'assetIds'},
  ],
};

const UpdateWatchlistRequest$json = const {
  '1': 'UpdateWatchlistRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
    const {'1': 'assetIds', '3': 4, '4': 3, '5': 9, '10': 'assetIds'},
  ],
};

const DeleteWatchlistRequest$json = const {
  '1': 'DeleteWatchlistRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const WalletRequest$json = const {
  '1': 'WalletRequest',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
  ],
};

const GenerateWalletRequest$json = const {
  '1': 'GenerateWalletRequest',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'bcnWallet', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.GenerateWalletRequest.BcnWalletRequest', '10': 'bcnWallet'},
  ],
  '3': const [GenerateWalletRequest_BcnWalletRequest$json],
};

const GenerateWalletRequest_BcnWalletRequest$json = const {
  '1': 'BcnWalletRequest',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'encodedKey', '3': 2, '4': 1, '5': 9, '10': 'encodedKey'},
    const {'1': 'publicKey', '3': 3, '4': 1, '5': 9, '10': 'publicKey'},
  ],
};

const GenerateWalletV2Request$json = const {
  '1': 'GenerateWalletV2Request',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
  ],
};

const SwiftCredentialsRequest$json = const {
  '1': 'SwiftCredentialsRequest',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
  ],
};

const BankTransferRequest$json = const {
  '1': 'BankTransferRequest',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'balanceChange', '3': 2, '4': 1, '5': 1, '10': 'balanceChange'},
  ],
};

const BankCardPaymentUrlRequest$json = const {
  '1': 'BankCardPaymentUrlRequest',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 9, '10': 'amount'},
    const {'1': 'assetId', '3': 3, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'city', '3': 4, '4': 1, '5': 9, '10': 'city'},
    const {'1': 'country', '3': 5, '4': 1, '5': 9, '10': 'country'},
    const {'1': 'email', '3': 6, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'firstName', '3': 7, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'lastName', '3': 8, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'phone', '3': 9, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'zip', '3': 10, '4': 1, '5': 9, '10': 'zip'},
    const {'1': 'depositOption', '3': 11, '4': 1, '5': 9, '10': 'depositOption'},
  ],
};

const CryptoDepositAddressRequest$json = const {
  '1': 'CryptoDepositAddressRequest',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
  ],
};

const WithdrawalCryptoInfoRequest$json = const {
  '1': 'WithdrawalCryptoInfoRequest',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
  ],
};

const SwiftCashoutFeeRequest$json = const {
  '1': 'SwiftCashoutFeeRequest',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'countryCode', '3': 2, '4': 1, '5': 9, '10': 'countryCode'},
  ],
};

const OffchainChannelKeyRequest$json = const {
  '1': 'OffchainChannelKeyRequest',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
  ],
};

const SwiftCashoutRequest$json = const {
  '1': 'SwiftCashoutRequest',
  '2': const [
    const {'1': 'amount', '3': 1, '4': 1, '5': 9, '10': 'amount'},
    const {'1': 'asset', '3': 2, '4': 1, '5': 9, '10': 'asset'},
    const {'1': 'prevTempPrivateKey', '3': 3, '4': 1, '5': 9, '10': 'prevTempPrivateKey'},
    const {'1': 'bic', '3': 4, '4': 1, '5': 9, '10': 'bic'},
    const {'1': 'accNumber', '3': 5, '4': 1, '5': 9, '10': 'accNumber'},
    const {'1': 'accName', '3': 6, '4': 1, '5': 9, '10': 'accName'},
    const {'1': 'accHolderAddress', '3': 7, '4': 1, '5': 9, '10': 'accHolderAddress'},
    const {'1': 'bankName', '3': 8, '4': 1, '5': 9, '10': 'bankName'},
    const {'1': 'accHolderCountry', '3': 9, '4': 1, '5': 9, '10': 'accHolderCountry'},
    const {'1': 'accHolderZipCode', '3': 10, '4': 1, '5': 9, '10': 'accHolderZipCode'},
    const {'1': 'accHolderCity', '3': 11, '4': 1, '5': 9, '10': 'accHolderCity'},
  ],
};

const SwiftCashoutFinalizeRequest$json = const {
  '1': 'SwiftCashoutFinalizeRequest',
  '2': const [
    const {'1': 'transferId', '3': 1, '4': 1, '5': 9, '10': 'transferId'},
    const {'1': 'clientRevokePubKey', '3': 2, '4': 1, '5': 9, '10': 'clientRevokePubKey'},
    const {'1': 'clientRevokeEncryptedPrivateKey', '3': 3, '4': 1, '5': 9, '10': 'clientRevokeEncryptedPrivateKey'},
    const {'1': 'signedTransferTransaction', '3': 4, '4': 1, '5': 9, '10': 'signedTransferTransaction'},
  ],
};

const CryptoCashoutRequest$json = const {
  '1': 'CryptoCashoutRequest',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'volume', '3': 2, '4': 1, '5': 9, '10': 'volume'},
    const {'1': 'destinationAddress', '3': 3, '4': 1, '5': 9, '10': 'destinationAddress'},
    const {'1': 'destinationAddressExtension', '3': 4, '4': 1, '5': 9, '10': 'destinationAddressExtension'},
  ],
};

const CandleUpdatesRequest$json = const {
  '1': 'CandleUpdatesRequest',
  '2': const [
    const {'1': 'assetPairId', '3': 1, '4': 1, '5': 9, '10': 'assetPairId'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.antaresWallet.CandleType', '10': 'type'},
    const {'1': 'interval', '3': 3, '4': 1, '5': 14, '6': '.antaresWallet.CandleInterval', '10': 'interval'},
  ],
};

const PricesResponse$json = const {
  '1': 'PricesResponse',
  '2': const [
    const {'1': 'prices', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.PriceUpdate', '10': 'prices'},
  ],
};

const AssetsDictionaryResponse$json = const {
  '1': 'AssetsDictionaryResponse',
  '2': const [
    const {'1': 'categories', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.AssetCategory', '10': 'categories'},
    const {'1': 'assets', '3': 2, '4': 3, '5': 11, '6': '.antaresWallet.Asset', '10': 'assets'},
  ],
};

const BaseAssetResponse$json = const {
  '1': 'BaseAssetResponse',
  '2': const [
    const {'1': 'baseAsset', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.BaseAssetResponse.BaseAsset', '10': 'baseAsset'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV2', '10': 'error'},
  ],
  '3': const [BaseAssetResponse_BaseAsset$json],
};

const BaseAssetResponse_BaseAsset$json = const {
  '1': 'BaseAsset',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
  ],
};

const CandlesResponse$json = const {
  '1': 'CandlesResponse',
  '2': const [
    const {'1': 'candles', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.Candle', '10': 'candles'},
  ],
};

const BalancesResponse$json = const {
  '1': 'BalancesResponse',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.Balance', '10': 'payload'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.Error', '10': 'error'},
  ],
};

const LimitOrdersResponse$json = const {
  '1': 'LimitOrdersResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.LimitOrdersResponse.OrdersPayload', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
  '3': const [LimitOrdersResponse_OrdersPayload$json],
};

const LimitOrdersResponse_OrdersPayload$json = const {
  '1': 'OrdersPayload',
  '2': const [
    const {'1': 'orders', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.LimitOrderModel', '10': 'orders'},
  ],
};

const PlaceOrderResponse$json = const {
  '1': 'PlaceOrderResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.PlaceOrderResponse.OrderPayload', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
  '3': const [PlaceOrderResponse_OrderPayload$json],
};

const PlaceOrderResponse_OrderPayload$json = const {
  '1': 'OrderPayload',
  '2': const [
    const {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.OrderModel', '10': 'order'},
  ],
};

const OrderModel$json = const {
  '1': 'OrderModel',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'dateTime', '3': 2, '4': 1, '5': 9, '10': 'dateTime'},
    const {'1': 'orderType', '3': 3, '4': 1, '5': 9, '10': 'orderType'},
    const {'1': 'volume', '3': 4, '4': 1, '5': 9, '10': 'volume'},
    const {'1': 'price', '3': 5, '4': 1, '5': 9, '10': 'price'},
    const {'1': 'asset', '3': 6, '4': 1, '5': 9, '10': 'asset'},
    const {'1': 'assetPair', '3': 7, '4': 1, '5': 9, '10': 'assetPair'},
    const {'1': 'totalCost', '3': 8, '4': 1, '5': 9, '10': 'totalCost'},
  ],
};

const LimitOrderModel$json = const {
  '1': 'LimitOrderModel',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'dateTime', '3': 2, '4': 1, '5': 9, '10': 'dateTime'},
    const {'1': 'orderType', '3': 3, '4': 1, '5': 9, '10': 'orderType'},
    const {'1': 'volume', '3': 4, '4': 1, '5': 9, '10': 'volume'},
    const {'1': 'price', '3': 5, '4': 1, '5': 9, '10': 'price'},
    const {'1': 'asset', '3': 6, '4': 1, '5': 9, '10': 'asset'},
    const {'1': 'assetPair', '3': 7, '4': 1, '5': 9, '10': 'assetPair'},
    const {'1': 'totalCost', '3': 8, '4': 1, '5': 9, '10': 'totalCost'},
    const {'1': 'remainingVolume', '3': 9, '4': 1, '5': 9, '10': 'remainingVolume'},
    const {'1': 'remainingOtherVolume', '3': 10, '4': 1, '5': 9, '10': 'remainingOtherVolume'},
  ],
};

const CancelOrderResponse$json = const {
  '1': 'CancelOrderResponse',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 8, '10': 'payload'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.Error', '10': 'error'},
  ],
};

const WatchlistsResponse$json = const {
  '1': 'WatchlistsResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.Watchlist', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
};

const WatchlistResponse$json = const {
  '1': 'WatchlistResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.Watchlist', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
};

const DeleteWatchlistResponse$json = const {
  '1': 'DeleteWatchlistResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
};

const TierInfoRespone$json = const {
  '1': 'TierInfoRespone',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.TierInfoPayload', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
};

const TierInfoPayload$json = const {
  '1': 'TierInfoPayload',
  '2': const [
    const {'1': 'currentTier', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.CurrentTier', '10': 'currentTier'},
    const {'1': 'nextTier', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.NextTier', '10': 'nextTier'},
    const {'1': 'upgradeRequest', '3': 3, '4': 1, '5': 11, '6': '.antaresWallet.UpgradeRequest', '10': 'upgradeRequest'},
    const {'1': 'questionnaireAnswered', '3': 4, '4': 1, '5': 8, '10': 'questionnaireAnswered'},
  ],
};

const WalletsResponse$json = const {
  '1': 'WalletsResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.WalletsResponse.GetWalletsPayload', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
  '3': const [WalletsResponse_GetWalletsPayload$json, WalletsResponse_LykkeWalletsPayload$json, WalletsResponse_WalletAsset$json],
};

const WalletsResponse_GetWalletsPayload$json = const {
  '1': 'GetWalletsPayload',
  '2': const [
    const {'1': 'lykke', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.WalletsResponse.LykkeWalletsPayload', '10': 'lykke'},
    const {'1': 'multiSig', '3': 2, '4': 1, '5': 9, '10': 'multiSig'},
    const {'1': 'coloredMultiSig', '3': 3, '4': 1, '5': 9, '10': 'coloredMultiSig'},
    const {'1': 'solarCoinAddress', '3': 4, '4': 1, '5': 9, '10': 'solarCoinAddress'},
  ],
};

const WalletsResponse_LykkeWalletsPayload$json = const {
  '1': 'LykkeWalletsPayload',
  '2': const [
    const {'1': 'assets', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.WalletsResponse.WalletAsset', '10': 'assets'},
    const {'1': 'equity', '3': 2, '4': 1, '5': 9, '10': 'equity'},
  ],
};

const WalletsResponse_WalletAsset$json = const {
  '1': 'WalletAsset',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'balance', '3': 3, '4': 1, '5': 9, '10': 'balance'},
    const {'1': 'symbol', '3': 4, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'assetPairId', '3': 5, '4': 1, '5': 9, '10': 'assetPairId'},
    const {'1': 'hideIfZero', '3': 6, '4': 1, '5': 8, '10': 'hideIfZero'},
    const {'1': 'issuerId', '3': 7, '4': 1, '5': 9, '10': 'issuerId'},
    const {'1': 'accuracy', '3': 8, '4': 1, '5': 5, '10': 'accuracy'},
    const {'1': 'categoryId', '3': 9, '4': 1, '5': 9, '10': 'categoryId'},
    const {'1': 'amountInBase', '3': 10, '4': 1, '5': 9, '10': 'amountInBase'},
    const {'1': 'reserved', '3': 11, '4': 1, '5': 9, '10': 'reserved'},
  ],
};

const WalletResponse$json = const {
  '1': 'WalletResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.WalletResponse.WalletPayload', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
  '3': const [WalletResponse_WalletPayload$json],
};

const WalletResponse_WalletPayload$json = const {
  '1': 'WalletPayload',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'balance', '3': 3, '4': 1, '5': 9, '10': 'balance'},
    const {'1': 'symbol', '3': 4, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'assetPairId', '3': 5, '4': 1, '5': 9, '10': 'assetPairId'},
    const {'1': 'hideIfZero', '3': 6, '4': 1, '5': 8, '10': 'hideIfZero'},
    const {'1': 'issuerId', '3': 7, '4': 1, '5': 9, '10': 'issuerId'},
    const {'1': 'accuracy', '3': 8, '4': 1, '5': 5, '10': 'accuracy'},
    const {'1': 'categoryId', '3': 9, '4': 1, '5': 9, '10': 'categoryId'},
    const {'1': 'amountInBase', '3': 10, '4': 1, '5': 9, '10': 'amountInBase'},
    const {'1': 'reserved', '3': 11, '4': 1, '5': 9, '10': 'reserved'},
  ],
};

const GenerateWalletResponse$json = const {
  '1': 'GenerateWalletResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.GenerateWalletResponse.WalletAddress', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
  '3': const [GenerateWalletResponse_WalletAddress$json, GenerateWalletResponse_BcnAddressExtension$json],
};

const GenerateWalletResponse_WalletAddress$json = const {
  '1': 'WalletAddress',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'addressExtension', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.GenerateWalletResponse.BcnAddressExtension', '10': 'addressExtension'},
  ],
};

const GenerateWalletResponse_BcnAddressExtension$json = const {
  '1': 'BcnAddressExtension',
  '2': const [
    const {'1': 'addressExtensionDisplayName', '3': 1, '4': 1, '5': 9, '10': 'addressExtensionDisplayName'},
    const {'1': 'baseAddressDisplayName', '3': 2, '4': 1, '5': 9, '10': 'baseAddressDisplayName'},
    const {'1': 'depositAddressExtension', '3': 3, '4': 1, '5': 9, '10': 'depositAddressExtension'},
    const {'1': 'typeForDeposit', '3': 4, '4': 1, '5': 9, '10': 'typeForDeposit'},
    const {'1': 'typeForWithdrawal', '3': 5, '4': 1, '5': 9, '10': 'typeForWithdrawal'},
  ],
};

const SwiftCredentialsResponse$json = const {
  '1': 'SwiftCredentialsResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.SwiftCredentialsResponse.SwiftCredentials', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
  '3': const [SwiftCredentialsResponse_SwiftCredentials$json],
};

const SwiftCredentialsResponse_SwiftCredentials$json = const {
  '1': 'SwiftCredentials',
  '2': const [
    const {'1': 'bic', '3': 1, '4': 1, '5': 9, '10': 'bic'},
    const {'1': 'accountNumber', '3': 2, '4': 1, '5': 9, '10': 'accountNumber'},
    const {'1': 'accountName', '3': 3, '4': 1, '5': 9, '10': 'accountName'},
    const {'1': 'purposeOfPayment', '3': 4, '4': 1, '5': 9, '10': 'purposeOfPayment'},
    const {'1': 'bankAddress', '3': 5, '4': 1, '5': 9, '10': 'bankAddress'},
    const {'1': 'companyAddress', '3': 6, '4': 1, '5': 9, '10': 'companyAddress'},
    const {'1': 'correspondentAccount', '3': 7, '4': 1, '5': 9, '10': 'correspondentAccount'},
  ],
};

const CountryPhoneCodesResponse$json = const {
  '1': 'CountryPhoneCodesResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.CountryPhoneCodesResponse.CountryPhoneCodes', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
  '3': const [CountryPhoneCodesResponse_CountryPhoneCodes$json],
};

const CountryPhoneCodesResponse_CountryPhoneCodes$json = const {
  '1': 'CountryPhoneCodes',
  '2': const [
    const {'1': 'current', '3': 1, '4': 1, '5': 9, '10': 'current'},
    const {'1': 'countriesList', '3': 2, '4': 3, '5': 11, '6': '.antaresWallet.Country', '10': 'countriesList'},
  ],
};

const BankCardPaymentDetailsResponse$json = const {
  '1': 'BankCardPaymentDetailsResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.BankCardPaymentDetailsResponse.BankCardPaymentDetails', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
  '3': const [BankCardPaymentDetailsResponse_BankCardPaymentDetails$json],
};

const BankCardPaymentDetailsResponse_BankCardPaymentDetails$json = const {
  '1': 'BankCardPaymentDetails',
  '2': const [
    const {'1': 'amount', '3': 1, '4': 1, '5': 1, '10': 'amount'},
    const {'1': 'assetId', '3': 2, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'walletId', '3': 3, '4': 1, '5': 9, '10': 'walletId'},
    const {'1': 'firstName', '3': 4, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'lastName', '3': 5, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'city', '3': 6, '4': 1, '5': 9, '10': 'city'},
    const {'1': 'zip', '3': 7, '4': 1, '5': 9, '10': 'zip'},
    const {'1': 'address', '3': 8, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'country', '3': 9, '4': 1, '5': 9, '10': 'country'},
    const {'1': 'email', '3': 10, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'phone', '3': 11, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'depositOption', '3': 12, '4': 1, '5': 9, '10': 'depositOption'},
    const {'1': 'okUrl', '3': 13, '4': 1, '5': 9, '10': 'okUrl'},
    const {'1': 'failUrl', '3': 14, '4': 1, '5': 9, '10': 'failUrl'},
  ],
};

const BankCardPaymentUrlResponse$json = const {
  '1': 'BankCardPaymentUrlResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.BankCardPaymentUrlResponse.BankCardPaymentUrl', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
  '3': const [BankCardPaymentUrlResponse_BankCardPaymentUrl$json],
};

const BankCardPaymentUrlResponse_BankCardPaymentUrl$json = const {
  '1': 'BankCardPaymentUrl',
  '2': const [
    const {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'okUrl', '3': 2, '4': 1, '5': 9, '10': 'okUrl'},
    const {'1': 'failUrl', '3': 3, '4': 1, '5': 9, '10': 'failUrl'},
    const {'1': 'reloadRegex', '3': 4, '4': 1, '5': 9, '10': 'reloadRegex'},
    const {'1': 'urlsToFormatRegex', '3': 5, '4': 1, '5': 9, '10': 'urlsToFormatRegex'},
  ],
};

const EthereumSettingsResponse$json = const {
  '1': 'EthereumSettingsResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.EthereumSettingsResponse.EthereumSettings', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
  '3': const [EthereumSettingsResponse_EthereumSettings$json, EthereumSettingsResponse_BitcoinFee$json],
};

const EthereumSettingsResponse_EthereumSettings$json = const {
  '1': 'EthereumSettings',
  '2': const [
    const {'1': 'stepsCount', '3': 1, '4': 1, '5': 5, '10': 'stepsCount'},
    const {'1': 'ethAssetId', '3': 2, '4': 1, '5': 9, '10': 'ethAssetId'},
    const {'1': 'stepGas', '3': 3, '4': 1, '5': 9, '10': 'stepGas'},
    const {'1': 'minGas', '3': 4, '4': 1, '5': 9, '10': 'minGas'},
    const {'1': 'maxGas', '3': 5, '4': 1, '5': 9, '10': 'maxGas'},
    const {'1': 'minGasPrice', '3': 6, '4': 1, '5': 9, '10': 'minGasPrice'},
    const {'1': 'maxGasPrice', '3': 7, '4': 1, '5': 9, '10': 'maxGasPrice'},
    const {'1': 'bitcoin', '3': 8, '4': 1, '5': 11, '6': '.antaresWallet.EthereumSettingsResponse.BitcoinFee', '10': 'bitcoin'},
  ],
};

const EthereumSettingsResponse_BitcoinFee$json = const {
  '1': 'BitcoinFee',
  '2': const [
    const {'1': 'minFee', '3': 1, '4': 1, '5': 9, '10': 'minFee'},
    const {'1': 'maxFee', '3': 2, '4': 1, '5': 9, '10': 'maxFee'},
  ],
};

const CryptoDepositAddressResponse$json = const {
  '1': 'CryptoDepositAddressResponse',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.CryptoDepositAddressResponse.CryptoDepositAddress', '10': 'address'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV2', '10': 'error'},
  ],
  '3': const [CryptoDepositAddressResponse_CryptoDepositAddress$json],
};

const CryptoDepositAddressResponse_CryptoDepositAddress$json = const {
  '1': 'CryptoDepositAddress',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'baseAddress', '3': 2, '4': 1, '5': 9, '10': 'baseAddress'},
    const {'1': 'addressExtension', '3': 3, '4': 1, '5': 9, '10': 'addressExtension'},
  ],
};

const WithdrawalCryptoInfoResponse$json = const {
  '1': 'WithdrawalCryptoInfoResponse',
  '2': const [
    const {'1': 'withdrawalInfo', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.WithdrawalCryptoInfoResponse.WithdrawalCryptoInfo', '10': 'withdrawalInfo'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV2', '10': 'error'},
  ],
  '3': const [WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo$json],
};

const WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo$json = const {
  '1': 'WithdrawalCryptoInfo',
  '2': const [
    const {'1': 'baseAddressTitle', '3': 1, '4': 1, '5': 9, '10': 'baseAddressTitle'},
    const {'1': 'addressExtensionMandatory', '3': 2, '4': 1, '5': 8, '10': 'addressExtensionMandatory'},
    const {'1': 'addressExtensionTitle', '3': 3, '4': 1, '5': 9, '10': 'addressExtensionTitle'},
  ],
};

const SwiftCashoutInfoResponse$json = const {
  '1': 'SwiftCashoutInfoResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.SwiftCashoutInfoResponse.SwiftCashoutInfo', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
  '3': const [SwiftCashoutInfoResponse_SwiftCashoutInfo$json],
};

const SwiftCashoutInfoResponse_SwiftCashoutInfo$json = const {
  '1': 'SwiftCashoutInfo',
  '2': const [
    const {'1': 'bic', '3': 1, '4': 1, '5': 9, '10': 'bic'},
    const {'1': 'accNumber', '3': 2, '4': 1, '5': 9, '10': 'accNumber'},
    const {'1': 'accName', '3': 3, '4': 1, '5': 9, '10': 'accName'},
    const {'1': 'bankName', '3': 4, '4': 1, '5': 9, '10': 'bankName'},
    const {'1': 'accHolderAddress', '3': 5, '4': 1, '5': 9, '10': 'accHolderAddress'},
    const {'1': 'accHolderCity', '3': 6, '4': 1, '5': 9, '10': 'accHolderCity'},
    const {'1': 'accHolderCountry', '3': 7, '4': 1, '5': 9, '10': 'accHolderCountry'},
    const {'1': 'accHolderZipCode', '3': 8, '4': 1, '5': 9, '10': 'accHolderZipCode'},
  ],
};

const OffchainChannelKeyResponse$json = const {
  '1': 'OffchainChannelKeyResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.OffchainChannelKeyResponse.OffchainChannel', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
  '3': const [OffchainChannelKeyResponse_OffchainChannel$json],
};

const OffchainChannelKeyResponse_OffchainChannel$json = const {
  '1': 'OffchainChannel',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

const SwiftCashoutResponse$json = const {
  '1': 'SwiftCashoutResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.SwiftCashoutResponse.SwiftCashoutData', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
  '3': const [SwiftCashoutResponse_SwiftCashoutData$json],
};

const SwiftCashoutResponse_SwiftCashoutData$json = const {
  '1': 'SwiftCashoutData',
  '2': const [
    const {'1': 'transferId', '3': 1, '4': 1, '5': 9, '10': 'transferId'},
    const {'1': 'transactionHex', '3': 2, '4': 1, '5': 9, '10': 'transactionHex'},
    const {'1': 'operationResult', '3': 3, '4': 1, '5': 9, '10': 'operationResult'},
  ],
};

const SwiftCashoutFinalizeResponse$json = const {
  '1': 'SwiftCashoutFinalizeResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.SwiftCashoutFinalizeResponse.OffchainTradeRespone', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
  '3': const [SwiftCashoutFinalizeResponse_OffchainTradeRespone$json, SwiftCashoutFinalizeResponse_OffchainOrder$json],
};

const SwiftCashoutFinalizeResponse_OffchainTradeRespone$json = const {
  '1': 'OffchainTradeRespone',
  '2': const [
    const {'1': 'transferId', '3': 1, '4': 1, '5': 9, '10': 'transferId'},
    const {'1': 'transactionHex', '3': 2, '4': 1, '5': 9, '10': 'transactionHex'},
    const {'1': 'operationResult', '3': 3, '4': 1, '5': 9, '10': 'operationResult'},
    const {'1': 'order', '3': 4, '4': 1, '5': 11, '6': '.antaresWallet.SwiftCashoutFinalizeResponse.OffchainOrder', '10': 'order'},
  ],
};

const SwiftCashoutFinalizeResponse_OffchainOrder$json = const {
  '1': 'OffchainOrder',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'dateTime', '3': 2, '4': 1, '5': 9, '10': 'dateTime'},
    const {'1': 'orderType', '3': 3, '4': 1, '5': 9, '10': 'orderType'},
    const {'1': 'volume', '3': 4, '4': 1, '5': 9, '10': 'volume'},
    const {'1': 'price', '3': 5, '4': 1, '5': 9, '10': 'price'},
    const {'1': 'asset', '3': 6, '4': 1, '5': 9, '10': 'asset'},
    const {'1': 'assetPair', '3': 7, '4': 1, '5': 9, '10': 'assetPair'},
    const {'1': 'totalCost', '3': 8, '4': 1, '5': 9, '10': 'totalCost'},
    const {'1': 'remainingVolume', '3': 9, '4': 1, '5': 9, '10': 'remainingVolume'},
    const {'1': 'remainingOtherVolume', '3': 10, '4': 1, '5': 9, '10': 'remainingOtherVolume'},
  ],
};

const AppSettingsResponse$json = const {
  '1': 'AppSettingsResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.AppSettingsResponse.AppSettingsData', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
  '3': const [AppSettingsResponse_AppSettingsData$json, AppSettingsResponse_ApiAsset$json, AppSettingsResponse_ApiRefundSettings$json, AppSettingsResponse_ApiFeeSettings$json],
};

const AppSettingsResponse_AppSettingsData$json = const {
  '1': 'AppSettingsData',
  '2': const [
    const {'1': 'RateRefreshPeriod', '3': 1, '4': 1, '5': 5, '10': 'RateRefreshPeriod'},
    const {'1': 'BaseAsset', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.AppSettingsResponse.ApiAsset', '10': 'BaseAsset'},
    const {'1': 'signOrder', '3': 3, '4': 1, '5': 8, '10': 'signOrder'},
    const {'1': 'DepositUrl', '3': 4, '4': 1, '5': 9, '10': 'DepositUrl'},
    const {'1': 'DebugMode', '3': 5, '4': 1, '5': 8, '10': 'DebugMode'},
    const {'1': 'RefundSettings', '3': 6, '4': 1, '5': 11, '6': '.antaresWallet.AppSettingsResponse.ApiRefundSettings', '10': 'RefundSettings'},
    const {'1': 'MarketOrderPriceDeviation', '3': 7, '4': 1, '5': 1, '10': 'MarketOrderPriceDeviation'},
    const {'1': 'FeeSettings', '3': 8, '4': 1, '5': 11, '6': '.antaresWallet.AppSettingsResponse.ApiFeeSettings', '10': 'FeeSettings'},
  ],
};

const AppSettingsResponse_ApiAsset$json = const {
  '1': 'ApiAsset',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'accuracy', '3': 3, '4': 1, '5': 5, '10': 'accuracy'},
    const {'1': 'symbol', '3': 4, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'hideWithdraw', '3': 5, '4': 1, '5': 8, '10': 'hideWithdraw'},
    const {'1': 'hideDeposit', '3': 6, '4': 1, '5': 8, '10': 'hideDeposit'},
    const {'1': 'kycNeeded', '3': 7, '4': 1, '5': 8, '10': 'kycNeeded'},
    const {'1': 'bankCardsDepositEnabled', '3': 8, '4': 1, '5': 8, '10': 'bankCardsDepositEnabled'},
    const {'1': 'swiftDepositEnabled', '3': 9, '4': 1, '5': 8, '10': 'swiftDepositEnabled'},
    const {'1': 'blockchainDepositEnabled', '3': 10, '4': 1, '5': 8, '10': 'blockchainDepositEnabled'},
    const {'1': 'otherDepositOptionsEnabled', '3': 11, '4': 1, '5': 8, '10': 'otherDepositOptionsEnabled'},
    const {'1': 'categoryId', '3': 12, '4': 1, '5': 9, '10': 'categoryId'},
  ],
};

const AppSettingsResponse_ApiRefundSettings$json = const {
  '1': 'ApiRefundSettings',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

const AppSettingsResponse_ApiFeeSettings$json = const {
  '1': 'ApiFeeSettings',
  '2': const [
    const {'1': 'BankCardsFeeSizePercentage', '3': 1, '4': 1, '5': 1, '10': 'BankCardsFeeSizePercentage'},
    const {'1': 'CashOut', '3': 2, '4': 3, '5': 11, '6': '.antaresWallet.CashOutFee', '10': 'CashOut'},
  ],
};

const PrivateWalletsResponse$json = const {
  '1': 'PrivateWalletsResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.PrivateWalletsResponse.PrivateWalletsPayload', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
  '3': const [PrivateWalletsResponse_PrivateWalletsPayload$json],
};

const PrivateWalletsResponse_PrivateWalletsPayload$json = const {
  '1': 'PrivateWalletsPayload',
  '2': const [
    const {'1': 'wallets', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.PrivateWallet', '10': 'wallets'},
  ],
};

const PrivateWallet$json = const {
  '1': 'PrivateWallet',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'encodedPrivateKey', '3': 3, '4': 1, '5': 9, '10': 'encodedPrivateKey'},
    const {'1': 'isColdStorage', '3': 4, '4': 1, '5': 8, '10': 'isColdStorage'},
    const {'1': 'number', '3': 5, '4': 1, '5': 5, '9': 0, '10': 'number'},
    const {'1': 'smallIconUrl', '3': 6, '4': 1, '5': 9, '10': 'smallIconUrl'},
    const {'1': 'mediumIconUrl', '3': 7, '4': 1, '5': 9, '10': 'mediumIconUrl'},
    const {'1': 'largeIconUrl', '3': 8, '4': 1, '5': 9, '10': 'largeIconUrl'},
    const {'1': 'balances', '3': 9, '4': 3, '5': 11, '6': '.antaresWallet.BalanceRecord', '10': 'balances'},
    const {'1': 'blockchain', '3': 10, '4': 1, '5': 9, '10': 'blockchain'},
  ],
  '8': const [
    const {'1': 'optional_Number'},
  ],
};

const BalanceRecord$json = const {
  '1': 'BalanceRecord',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'balance', '3': 2, '4': 1, '5': 9, '10': 'balance'},
    const {'1': 'baseAssetId', '3': 3, '4': 1, '5': 9, '10': 'baseAssetId'},
    const {'1': 'amountInBase', '3': 4, '4': 1, '5': 9, '10': 'amountInBase'},
  ],
};

const CashOutFee$json = const {
  '1': 'CashOutFee',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'size', '3': 2, '4': 1, '5': 1, '10': 'size'},
    const {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
  ],
};

const SwiftCashoutFeeResponse$json = const {
  '1': 'SwiftCashoutFeeResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.SwiftCashoutFeeResponse.SwiftCashoutFee', '10': 'result'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
  '3': const [SwiftCashoutFeeResponse_SwiftCashoutFee$json],
};

const SwiftCashoutFeeResponse_SwiftCashoutFee$json = const {
  '1': 'SwiftCashoutFee',
  '2': const [
    const {'1': 'size', '3': 1, '4': 1, '5': 9, '10': 'size'},
    const {'1': 'assetId', '3': 2, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'country', '3': 3, '4': 1, '5': 9, '10': 'country'},
  ],
};

const CurrentTier$json = const {
  '1': 'CurrentTier',
  '2': const [
    const {'1': 'tier', '3': 1, '4': 1, '5': 9, '10': 'tier'},
    const {'1': 'asset', '3': 2, '4': 1, '5': 9, '10': 'asset'},
    const {'1': 'current', '3': 3, '4': 1, '5': 9, '10': 'current'},
    const {'1': 'maxLimit', '3': 4, '4': 1, '5': 9, '10': 'maxLimit'},
  ],
};

const NextTier$json = const {
  '1': 'NextTier',
  '2': const [
    const {'1': 'tier', '3': 1, '4': 1, '5': 9, '10': 'tier'},
    const {'1': 'maxLimit', '3': 2, '4': 1, '5': 9, '10': 'maxLimit'},
    const {'1': 'documents', '3': 3, '4': 3, '5': 9, '10': 'documents'},
  ],
};

const UpgradeRequest$json = const {
  '1': 'UpgradeRequest',
  '2': const [
    const {'1': 'tier', '3': 1, '4': 1, '5': 9, '10': 'tier'},
    const {'1': 'submitDate', '3': 2, '4': 1, '5': 9, '10': 'submitDate'},
    const {'1': 'status', '3': 3, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'limit', '3': 4, '4': 1, '5': 9, '10': 'limit'},
  ],
};

const AssetCategory$json = const {
  '1': 'AssetCategory',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'iconUrl', '3': 3, '4': 1, '5': 9, '10': 'iconUrl'},
  ],
};

const Asset$json = const {
  '1': 'Asset',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'symbol', '3': 3, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'accuracy', '3': 4, '4': 1, '5': 5, '10': 'accuracy'},
    const {'1': 'kycNeeded', '3': 5, '4': 1, '5': 8, '10': 'kycNeeded'},
    const {'1': 'categoryId', '3': 6, '4': 1, '5': 9, '10': 'categoryId'},
    const {'1': 'cardDeposit', '3': 7, '4': 1, '5': 8, '10': 'cardDeposit'},
    const {'1': 'swiftDeposit', '3': 8, '4': 1, '5': 8, '10': 'swiftDeposit'},
    const {'1': 'blockchainDeposit', '3': 9, '4': 1, '5': 8, '10': 'blockchainDeposit'},
    const {'1': 'swiftWithdrawal', '3': 10, '4': 1, '5': 8, '10': 'swiftWithdrawal'},
    const {'1': 'forwardWithdrawal', '3': 11, '4': 1, '5': 8, '10': 'forwardWithdrawal'},
    const {'1': 'crosschainWithdrawal', '3': 12, '4': 1, '5': 8, '10': 'crosschainWithdrawal'},
    const {'1': 'isTrusted', '3': 13, '4': 1, '5': 8, '10': 'isTrusted'},
    const {'1': 'canBeBase', '3': 14, '4': 1, '5': 8, '10': 'canBeBase'},
  ],
};

const PriceUpdate$json = const {
  '1': 'PriceUpdate',
  '2': const [
    const {'1': 'assetPairId', '3': 1, '4': 1, '5': 9, '10': 'assetPairId'},
    const {'1': 'bid', '3': 2, '4': 1, '5': 9, '10': 'bid'},
    const {'1': 'ask', '3': 3, '4': 1, '5': 9, '10': 'ask'},
    const {'1': 'timestamp', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
  ],
};

const Candle$json = const {
  '1': 'Candle',
  '2': const [
    const {'1': 'open', '3': 1, '4': 1, '5': 9, '10': 'open'},
    const {'1': 'close', '3': 2, '4': 1, '5': 9, '10': 'close'},
    const {'1': 'high', '3': 3, '4': 1, '5': 9, '10': 'high'},
    const {'1': 'low', '3': 4, '4': 1, '5': 9, '10': 'low'},
    const {'1': 'volume', '3': 5, '4': 1, '5': 9, '10': 'volume'},
    const {'1': 'oppositeVolume', '3': 6, '4': 1, '5': 9, '10': 'oppositeVolume'},
    const {'1': 'lastPrice', '3': 7, '4': 1, '5': 9, '10': 'lastPrice'},
    const {'1': 'timestamp', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
  ],
};

const CandleUpdate$json = const {
  '1': 'CandleUpdate',
  '2': const [
    const {'1': 'open', '3': 1, '4': 1, '5': 9, '10': 'open'},
    const {'1': 'close', '3': 2, '4': 1, '5': 9, '10': 'close'},
    const {'1': 'high', '3': 3, '4': 1, '5': 9, '10': 'high'},
    const {'1': 'low', '3': 4, '4': 1, '5': 9, '10': 'low'},
    const {'1': 'volume', '3': 5, '4': 1, '5': 9, '10': 'volume'},
    const {'1': 'oppositeVolume', '3': 6, '4': 1, '5': 9, '10': 'oppositeVolume'},
    const {'1': 'lastPrice', '3': 7, '4': 1, '5': 9, '10': 'lastPrice'},
    const {'1': 'timestamp', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
    const {'1': 'updateTimestamp', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updateTimestamp'},
  ],
};

const Balance$json = const {
  '1': 'Balance',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'available', '3': 2, '4': 1, '5': 9, '10': 'available'},
    const {'1': 'reserved', '3': 3, '4': 1, '5': 9, '10': 'reserved'},
    const {'1': 'timestamp', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
  ],
};

const Watchlist$json = const {
  '1': 'Watchlist',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
    const {'1': 'readonly', '3': 5, '4': 1, '5': 8, '10': 'readonly'},
    const {'1': 'assetIds', '3': 6, '4': 3, '5': 9, '10': 'assetIds'},
  ],
};

const Country$json = const {
  '1': 'Country',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'iso2', '3': 2, '4': 1, '5': 9, '10': 'iso2'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'prefix', '3': 4, '4': 1, '5': 9, '10': 'prefix'},
  ],
};

const EmptyResponse$json = const {
  '1': 'EmptyResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV1', '10': 'error'},
  ],
};

const EmptyResponseV2$json = const {
  '1': 'EmptyResponseV2',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.ErrorV2', '10': 'error'},
  ],
};

const Error$json = const {
  '1': 'Error',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'fields', '3': 2, '4': 3, '5': 11, '6': '.antaresWallet.Error.FieldsEntry', '10': 'fields'},
  ],
  '3': const [Error_FieldsEntry$json],
};

const Error_FieldsEntry$json = const {
  '1': 'FieldsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const ErrorV1$json = const {
  '1': 'ErrorV1',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'field', '3': 2, '4': 1, '5': 9, '10': 'field'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'details', '3': 4, '4': 1, '5': 9, '10': 'details'},
  ],
};

const ErrorV2$json = const {
  '1': 'ErrorV2',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

