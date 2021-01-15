///
//  Generated code. Do not modify.
//  source: apiservice.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const TierUpgrade$json = const {
  '1': 'TierUpgrade',
  '2': const [
    const {'1': 'Advanced', '2': 0},
    const {'1': 'ProIndividual', '2': 1},
  ],
};

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

const BaseAssetUpdateRequest$json = const {
  '1': 'BaseAssetUpdateRequest',
  '2': const [
    const {'1': 'baseAssetId', '3': 1, '4': 1, '5': 9, '10': 'baseAssetId'},
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

const OrderbookRequest$json = const {
  '1': 'OrderbookRequest',
  '2': const [
    const {'1': 'assetPairId', '3': 1, '4': 1, '5': 9, '10': 'assetPairId'},
  ],
};

const AmountInBaseRequest$json = const {
  '1': 'AmountInBaseRequest',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
  ],
};

const PushSettingsRequest$json = const {
  '1': 'PushSettingsRequest',
  '2': const [
    const {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

const RegisterPushRequest$json = const {
  '1': 'RegisterPushRequest',
  '2': const [
    const {'1': 'fcmToken', '3': 1, '4': 1, '5': 9, '10': 'fcmToken'},
  ],
};

const VerificationEmailRequest$json = const {
  '1': 'VerificationEmailRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

const VerificationSmsRequest$json = const {
  '1': 'VerificationSmsRequest',
  '2': const [
    const {'1': 'phone', '3': 1, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const VerifyEmailRequest$json = const {
  '1': 'VerifyEmailRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

const VerifyPhoneRequest$json = const {
  '1': 'VerifyPhoneRequest',
  '2': const [
    const {'1': 'phone', '3': 1, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

const RegisterRequest$json = const {
  '1': 'RegisterRequest',
  '2': const [
    const {'1': 'fullName', '3': 1, '4': 1, '5': 9, '10': 'fullName'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'phone', '3': 3, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'password', '3': 4, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'hint', '3': 5, '4': 1, '5': 9, '10': 'hint'},
    const {'1': 'countryIso3Code', '3': 6, '4': 1, '5': 9, '10': 'countryIso3Code'},
    const {'1': 'affiliateCode', '3': 7, '4': 1, '5': 9, '10': 'affiliateCode'},
    const {'1': 'pin', '3': 8, '4': 1, '5': 9, '10': 'pin'},
    const {'1': 'token', '3': 9, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'publicKey', '3': 10, '4': 1, '5': 9, '10': 'publicKey'},
  ],
};

const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'publicKey', '3': 3, '4': 1, '5': 9, '10': 'publicKey'},
  ],
};

const LoginSmsRequest$json = const {
  '1': 'LoginSmsRequest',
  '2': const [
    const {'1': 'sessionId', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
  ],
};

const VerifyLoginSmsRequest$json = const {
  '1': 'VerifyLoginSmsRequest',
  '2': const [
    const {'1': 'sessionId', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    const {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
  ],
};

const CheckPinRequest$json = const {
  '1': 'CheckPinRequest',
  '2': const [
    const {'1': 'sessionId', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    const {'1': 'pin', '3': 2, '4': 1, '5': 9, '10': 'pin'},
  ],
};

const CheckSessionRequest$json = const {
  '1': 'CheckSessionRequest',
  '2': const [
    const {'1': 'sessionId', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
  ],
};

const MarketsRequest$json = const {
  '1': 'MarketsRequest',
  '2': const [
    const {'1': 'assetPairId', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'assetPairId'},
  ],
  '8': const [
    const {'1': 'optional_assetPairId'},
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
    const {'1': 'side', '3': 2, '4': 1, '5': 14, '6': '.antaresWallet.Side', '9': 0, '10': 'side'},
  ],
  '8': const [
    const {'1': 'optional_side'},
  ],
};

const CancelOrderRequest$json = const {
  '1': 'CancelOrderRequest',
  '2': const [
    const {'1': 'orderId', '3': 1, '4': 1, '5': 9, '10': 'orderId'},
  ],
};

const EditOrderRequest$json = const {
  '1': 'EditOrderRequest',
  '2': const [
    const {'1': 'orderId', '3': 1, '4': 1, '5': 9, '10': 'orderId'},
    const {'1': 'assetPairId', '3': 2, '4': 1, '5': 9, '10': 'assetPairId'},
    const {'1': 'assetId', '3': 3, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'volume', '3': 4, '4': 1, '5': 1, '10': 'volume'},
    const {'1': 'price', '3': 5, '4': 1, '5': 1, '10': 'price'},
  ],
};

const TradesRequest$json = const {
  '1': 'TradesRequest',
  '2': const [
    const {'1': 'assetPairId', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'assetPairId'},
    const {'1': 'take', '3': 2, '4': 1, '5': 5, '10': 'take'},
    const {'1': 'skip', '3': 3, '4': 1, '5': 5, '10': 'skip'},
    const {'1': 'from', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'from'},
    const {'1': 'to', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 2, '10': 'to'},
    const {'1': 'tradeType', '3': 6, '4': 1, '5': 9, '9': 3, '10': 'tradeType'},
  ],
  '8': const [
    const {'1': 'optional_assetPairId'},
    const {'1': 'optional_fromDate'},
    const {'1': 'optional_toDate'},
    const {'1': 'optional_tradeType'},
  ],
};

const AssetTradesRequest$json = const {
  '1': 'AssetTradesRequest',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'take', '3': 2, '4': 1, '5': 5, '10': 'take'},
    const {'1': 'skip', '3': 3, '4': 1, '5': 5, '10': 'skip'},
  ],
};

const FundsRequest$json = const {
  '1': 'FundsRequest',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'assetId'},
    const {'1': 'take', '3': 2, '4': 1, '5': 5, '10': 'take'},
    const {'1': 'skip', '3': 3, '4': 1, '5': 5, '10': 'skip'},
    const {'1': 'from', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'from'},
    const {'1': 'to', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 2, '10': 'to'},
  ],
  '8': const [
    const {'1': 'optional_assetId'},
    const {'1': 'optional_fromDate'},
    const {'1': 'optional_toDate'},
  ],
};

const ExplorerLinksRequest$json = const {
  '1': 'ExplorerLinksRequest',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'transactionHash', '3': 2, '4': 1, '5': 9, '10': 'transactionHash'},
  ],
};

const PublicTradesRequest$json = const {
  '1': 'PublicTradesRequest',
  '2': const [
    const {'1': 'assetPairId', '3': 1, '4': 1, '5': 9, '10': 'assetPairId'},
    const {'1': 'skip', '3': 2, '4': 1, '5': 5, '10': 'skip'},
    const {'1': 'take', '3': 3, '4': 1, '5': 5, '10': 'take'},
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

const SetAddressRequest$json = const {
  '1': 'SetAddressRequest',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

const SetZipRequest$json = const {
  '1': 'SetZipRequest',
  '2': const [
    const {'1': 'zip', '3': 1, '4': 1, '5': 9, '10': 'zip'},
  ],
};

const KycFileRequest$json = const {
  '1': 'KycFileRequest',
  '2': const [
    const {'1': 'documentType', '3': 1, '4': 1, '5': 9, '10': 'documentType'},
    const {'1': 'filename', '3': 2, '4': 1, '5': 9, '10': 'filename'},
    const {'1': 'file', '3': 3, '4': 1, '5': 12, '10': 'file'},
  ],
};

const AnswersRequest$json = const {
  '1': 'AnswersRequest',
  '2': const [
    const {'1': 'answers', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.AnswersRequest.Choice', '10': 'answers'},
  ],
  '3': const [AnswersRequest_Choice$json],
};

const AnswersRequest_Choice$json = const {
  '1': 'Choice',
  '2': const [
    const {'1': 'questionId', '3': 1, '4': 1, '5': 9, '10': 'questionId'},
    const {'1': 'answerIds', '3': 2, '4': 3, '5': 9, '10': 'answerIds'},
    const {'1': 'other', '3': 3, '4': 1, '5': 9, '10': 'other'},
  ],
};

const SubmitProfileRequest$json = const {
  '1': 'SubmitProfileRequest',
  '2': const [
    const {'1': 'tier', '3': 1, '4': 1, '5': 14, '6': '.antaresWallet.TierUpgrade', '9': 0, '10': 'tier'},
  ],
  '8': const [
    const {'1': 'optional_tier'},
  ],
};

const WalletRequest$json = const {
  '1': 'WalletRequest',
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
    const {'1': 'amount', '3': 1, '4': 1, '5': 9, '10': 'amount'},
    const {'1': 'assetId', '3': 2, '4': 1, '5': 9, '10': 'assetId'},
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

const CheckCryptoAddressRequest$json = const {
  '1': 'CheckCryptoAddressRequest',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'addressExtension', '3': 3, '4': 1, '5': 9, '10': 'addressExtension'},
  ],
};

const SwiftCashoutFeeRequest$json = const {
  '1': 'SwiftCashoutFeeRequest',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'countryCode', '3': 2, '4': 1, '5': 9, '10': 'countryCode'},
  ],
};

const SwiftCashoutRequest$json = const {
  '1': 'SwiftCashoutRequest',
  '2': const [
    const {'1': 'amount', '3': 1, '4': 1, '5': 9, '10': 'amount'},
    const {'1': 'asset', '3': 2, '4': 1, '5': 9, '10': 'asset'},
    const {'1': 'bic', '3': 3, '4': 1, '5': 9, '10': 'bic'},
    const {'1': 'accNumber', '3': 4, '4': 1, '5': 9, '10': 'accNumber'},
    const {'1': 'accName', '3': 5, '4': 1, '5': 9, '10': 'accName'},
    const {'1': 'accHolderAddress', '3': 6, '4': 1, '5': 9, '10': 'accHolderAddress'},
    const {'1': 'bankName', '3': 7, '4': 1, '5': 9, '10': 'bankName'},
    const {'1': 'accHolderCountry', '3': 8, '4': 1, '5': 9, '10': 'accHolderCountry'},
    const {'1': 'accHolderZipCode', '3': 9, '4': 1, '5': 9, '10': 'accHolderZipCode'},
    const {'1': 'accHolderCity', '3': 10, '4': 1, '5': 9, '10': 'accHolderCity'},
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

const AssetDisclaimerRequest$json = const {
  '1': 'AssetDisclaimerRequest',
  '2': const [
    const {'1': 'disclaimerId', '3': 1, '4': 1, '5': 9, '10': 'disclaimerId'},
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

const OrderbookUpdatesRequest$json = const {
  '1': 'OrderbookUpdatesRequest',
  '2': const [
    const {'1': 'assetPairId', '3': 1, '4': 1, '5': 9, '10': 'assetPairId'},
  ],
};

const PublicTradesUpdatesRequest$json = const {
  '1': 'PublicTradesUpdatesRequest',
  '2': const [
    const {'1': 'assetPairId', '3': 1, '4': 1, '5': 9, '10': 'assetPairId'},
  ],
};

const PricesResponse$json = const {
  '1': 'PricesResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.PricesResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [PricesResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const PricesResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'prices', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.PriceUpdate', '10': 'prices'},
  ],
};

const AssetsDictionaryResponse$json = const {
  '1': 'AssetsDictionaryResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.AssetsDictionaryResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [AssetsDictionaryResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const AssetsDictionaryResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'categories', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.AssetCategory', '10': 'categories'},
    const {'1': 'assets', '3': 2, '4': 3, '5': 11, '6': '.antaresWallet.Asset', '10': 'assets'},
  ],
};

const BaseAssetResponse$json = const {
  '1': 'BaseAssetResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.BaseAssetResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [BaseAssetResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const BaseAssetResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
  ],
};

const AssetPairsResponse$json = const {
  '1': 'AssetPairsResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.AssetPairsResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [AssetPairsResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const AssetPairsResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'assetPairs', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.AssetPair', '10': 'assetPairs'},
  ],
};

const CandlesResponse$json = const {
  '1': 'CandlesResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.CandlesResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [CandlesResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const CandlesResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'candles', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.Candle', '10': 'candles'},
  ],
};

const BalancesResponse$json = const {
  '1': 'BalancesResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.BalancesResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [BalancesResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const BalancesResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'balances', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.Balance', '10': 'balances'},
  ],
};

const MarketsResponse$json = const {
  '1': 'MarketsResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.MarketsResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [MarketsResponse_Body$json, MarketsResponse_MarketModel$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const MarketsResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'markets', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.MarketsResponse.MarketModel', '10': 'markets'},
  ],
};

const MarketsResponse_MarketModel$json = const {
  '1': 'MarketModel',
  '2': const [
    const {'1': 'assetPair', '3': 1, '4': 1, '5': 9, '10': 'assetPair'},
    const {'1': 'volume24H', '3': 2, '4': 1, '5': 9, '10': 'volume24H'},
    const {'1': 'priceChange24H', '3': 3, '4': 1, '5': 9, '10': 'priceChange24H'},
    const {'1': 'lastPrice', '3': 4, '4': 1, '5': 9, '10': 'lastPrice'},
    const {'1': 'bid', '3': 5, '4': 1, '5': 9, '10': 'bid'},
    const {'1': 'ask', '3': 6, '4': 1, '5': 9, '10': 'ask'},
    const {'1': 'high', '3': 7, '4': 1, '5': 9, '10': 'high'},
    const {'1': 'low', '3': 8, '4': 1, '5': 9, '10': 'low'},
  ],
};

const PendingActionsResponse$json = const {
  '1': 'PendingActionsResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.PendingActionsResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [PendingActionsResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const PendingActionsResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'unsignedTxs', '3': 1, '4': 1, '5': 8, '10': 'unsignedTxs'},
    const {'1': 'offchainRequests', '3': 2, '4': 1, '5': 8, '10': 'offchainRequests'},
    const {'1': 'needReinit', '3': 3, '4': 1, '5': 8, '10': 'needReinit'},
    const {'1': 'dialogPending', '3': 4, '4': 1, '5': 8, '10': 'dialogPending'},
    const {'1': 'pendingOperations', '3': 5, '4': 1, '5': 8, '10': 'pendingOperations'},
    const {'1': 'ethereumPendingActions', '3': 6, '4': 1, '5': 8, '10': 'ethereumPendingActions'},
    const {'1': 'sessionConfirmation', '3': 7, '4': 1, '5': 8, '10': 'sessionConfirmation'},
  ],
};

const AmountInBaseAssetResponse$json = const {
  '1': 'AmountInBaseAssetResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.AmountInBaseAssetResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [AmountInBaseAssetResponse_Body$json, AmountInBaseAssetResponse_AmountInBasePayload$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const AmountInBaseAssetResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'values', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.AmountInBaseAssetResponse.AmountInBasePayload', '10': 'values'},
  ],
};

const AmountInBaseAssetResponse_AmountInBasePayload$json = const {
  '1': 'AmountInBasePayload',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'amountInBase', '3': 2, '4': 1, '5': 9, '10': 'amountInBase'},
  ],
};

const PushSettingsResponse$json = const {
  '1': 'PushSettingsResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.PushSettingsResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [PushSettingsResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const PushSettingsResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

const VerificationEmailResponse$json = const {
  '1': 'VerificationEmailResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.VerificationEmailResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [VerificationEmailResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const VerificationEmailResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

const VerifyResponse$json = const {
  '1': 'VerifyResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.VerifyResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [VerifyResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const VerifyResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'passed', '3': 1, '4': 1, '5': 8, '10': 'passed'},
  ],
};

const RegisterResponse$json = const {
  '1': 'RegisterResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.RegisterResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [RegisterResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const RegisterResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'sessionId', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    const {'1': 'notificationsId', '3': 2, '4': 1, '5': 9, '10': 'notificationsId'},
    const {'1': 'personalData', '3': 3, '4': 1, '5': 11, '6': '.antaresWallet.PersonalData', '10': 'personalData'},
    const {'1': 'canCashInViaBankCard', '3': 4, '4': 1, '5': 8, '10': 'canCashInViaBankCard'},
    const {'1': 'swiftDepositEnabled', '3': 5, '4': 1, '5': 8, '10': 'swiftDepositEnabled'},
    const {'1': 'state', '3': 6, '4': 1, '5': 9, '10': 'state'},
  ],
};

const LoginResponse$json = const {
  '1': 'LoginResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.LoginResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [LoginResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const LoginResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'sessionId', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    const {'1': 'notificationId', '3': 2, '4': 1, '5': 9, '10': 'notificationId'},
  ],
};

const VerifyLoginSmsResponse$json = const {
  '1': 'VerifyLoginSmsResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.VerifyLoginSmsResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [VerifyLoginSmsResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const VerifyLoginSmsResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'passed', '3': 1, '4': 1, '5': 8, '10': 'passed'},
  ],
};

const CheckPinResponse$json = const {
  '1': 'CheckPinResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.CheckPinResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [CheckPinResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const CheckPinResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'passed', '3': 1, '4': 1, '5': 8, '10': 'passed'},
  ],
};

const CheckSessionResponse$json = const {
  '1': 'CheckSessionResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.CheckSessionResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [CheckSessionResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const CheckSessionResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'expired', '3': 1, '4': 1, '5': 8, '10': 'expired'},
  ],
};

const LimitOrdersResponse$json = const {
  '1': 'LimitOrdersResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.LimitOrdersResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [LimitOrdersResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const LimitOrdersResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'orders', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.LimitOrderModel', '10': 'orders'},
  ],
};

const PlaceOrderResponse$json = const {
  '1': 'PlaceOrderResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.OrderModel', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '8': const [
    const {'1': 'result'},
  ],
};

const OrderModel$json = const {
  '1': 'OrderModel',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'dateTime', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dateTime'},
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
    const {'1': 'dateTime', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dateTime'},
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
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.CancelOrderResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [CancelOrderResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const CancelOrderResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 8, '10': 'payload'},
  ],
};

const TradesResponse$json = const {
  '1': 'TradesResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.TradesResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [TradesResponse_Body$json, TradesResponse_TradeModel$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const TradesResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'trades', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.TradesResponse.TradeModel', '10': 'trades'},
  ],
};

const TradesResponse_TradeModel$json = const {
  '1': 'TradeModel',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'orderId', '3': 2, '4': 1, '5': 9, '10': 'orderId'},
    const {'1': 'assetPairId', '3': 3, '4': 1, '5': 9, '10': 'assetPairId'},
    const {'1': 'price', '3': 4, '4': 1, '5': 9, '10': 'price'},
    const {'1': 'direction', '3': 5, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'baseAssetName', '3': 6, '4': 1, '5': 9, '10': 'baseAssetName'},
    const {'1': 'baseVolume', '3': 7, '4': 1, '5': 9, '10': 'baseVolume'},
    const {'1': 'quoteAssetName', '3': 8, '4': 1, '5': 9, '10': 'quoteAssetName'},
    const {'1': 'quoteVolume', '3': 9, '4': 1, '5': 9, '10': 'quoteVolume'},
    const {'1': 'timestamp', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
  ],
};

const AssetTradesResponse$json = const {
  '1': 'AssetTradesResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.AssetTradesResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [AssetTradesResponse_Body$json, AssetTradesResponse_AssetTradeModel$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const AssetTradesResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'trades', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.AssetTradesResponse.AssetTradeModel', '10': 'trades'},
  ],
};

const AssetTradesResponse_AssetTradeModel$json = const {
  '1': 'AssetTradeModel',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'assetPairId', '3': 2, '4': 1, '5': 9, '10': 'assetPairId'},
    const {'1': 'baseAssetId', '3': 3, '4': 1, '5': 9, '10': 'baseAssetId'},
    const {'1': 'quoteAssetId', '3': 4, '4': 1, '5': 9, '10': 'quoteAssetId'},
    const {'1': 'price', '3': 5, '4': 1, '5': 9, '10': 'price'},
    const {'1': 'baseVolume', '3': 6, '4': 1, '5': 9, '10': 'baseVolume'},
    const {'1': 'quoteVolume', '3': 7, '4': 1, '5': 9, '10': 'quoteVolume'},
    const {'1': 'timestamp', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
  ],
};

const FundsResponse$json = const {
  '1': 'FundsResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.FundsResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [FundsResponse_Body$json, FundsResponse_FundsModel$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const FundsResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'funds', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.FundsResponse.FundsModel', '10': 'funds'},
  ],
};

const FundsResponse_FundsModel$json = const {
  '1': 'FundsModel',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'assetId', '3': 2, '4': 1, '5': 9, '10': 'assetId'},
    const {'1': 'assetName', '3': 3, '4': 1, '5': 9, '10': 'assetName'},
    const {'1': 'volume', '3': 4, '4': 1, '5': 9, '10': 'volume'},
    const {'1': 'operation', '3': 5, '4': 1, '5': 9, '10': 'operation'},
    const {'1': 'type', '3': 6, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'status', '3': 7, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'timestamp', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
    const {'1': 'blockchainHash', '3': 9, '4': 1, '5': 9, '10': 'blockchainHash'},
  ],
};

const ExplorerLinksResponse$json = const {
  '1': 'ExplorerLinksResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.ExplorerLinksResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [ExplorerLinksResponse_Body$json, ExplorerLinksResponse_ExplorerLinkModel$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const ExplorerLinksResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'links', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.ExplorerLinksResponse.ExplorerLinkModel', '10': 'links'},
  ],
};

const ExplorerLinksResponse_ExplorerLinkModel$json = const {
  '1': 'ExplorerLinkModel',
  '2': const [
    const {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

const PublicTradesResponse$json = const {
  '1': 'PublicTradesResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.PublicTradesResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [PublicTradesResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const PublicTradesResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'result', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.PublicTrade', '10': 'result'},
  ],
};

const PublicTrade$json = const {
  '1': 'PublicTrade',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'assetPairId', '3': 2, '4': 1, '5': 9, '10': 'assetPairId'},
    const {'1': 'dateTime', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dateTime'},
    const {'1': 'volume', '3': 4, '4': 1, '5': 9, '10': 'volume'},
    const {'1': 'price', '3': 5, '4': 1, '5': 9, '10': 'price'},
    const {'1': 'side', '3': 6, '4': 1, '5': 9, '10': 'side'},
  ],
};

const WatchlistsResponse$json = const {
  '1': 'WatchlistsResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.WatchlistsResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [WatchlistsResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const WatchlistsResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'result', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.Watchlist', '10': 'result'},
  ],
};

const WatchlistResponse$json = const {
  '1': 'WatchlistResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.Watchlist', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '8': const [
    const {'1': 'result'},
  ],
};

const TierInfoResponse$json = const {
  '1': 'TierInfoResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.TierInfoPayload', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '8': const [
    const {'1': 'result'},
  ],
};

const PersonalDataResponse$json = const {
  '1': 'PersonalDataResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.PersonalData', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '8': const [
    const {'1': 'result'},
  ],
};

const PersonalData$json = const {
  '1': 'PersonalData',
  '2': const [
    const {'1': 'fullName', '3': 1, '4': 1, '5': 9, '10': 'fullName'},
    const {'1': 'firstName', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'lastName', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'phone', '3': 5, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'country', '3': 6, '4': 1, '5': 9, '10': 'country'},
    const {'1': 'address', '3': 7, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'city', '3': 8, '4': 1, '5': 9, '10': 'city'},
    const {'1': 'zip', '3': 9, '4': 1, '5': 9, '10': 'zip'},
  ],
};

const KycDocumentsResponse$json = const {
  '1': 'KycDocumentsResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.KycDocumentsResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [KycDocumentsResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const KycDocumentsResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'result', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.KycDocumentsResponse.Body.ResultEntry', '10': 'result'},
  ],
  '3': const [KycDocumentsResponse_Body_ResultEntry$json],
};

const KycDocumentsResponse_Body_ResultEntry$json = const {
  '1': 'ResultEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.KycDocument', '10': 'value'},
  ],
  '7': const {'7': true},
};

const KycDocument$json = const {
  '1': 'KycDocument',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'status', '3': 3, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'rejectReason', '3': 4, '4': 1, '5': 9, '10': 'rejectReason'},
    const {'1': 'files', '3': 5, '4': 3, '5': 11, '6': '.antaresWallet.KycFile', '10': 'files'},
  ],
};

const KycFile$json = const {
  '1': 'KycFile',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'contentType', '3': 4, '4': 1, '5': 9, '10': 'contentType'},
    const {'1': 'fileName', '3': 5, '4': 1, '5': 9, '10': 'fileName'},
  ],
};

const QuestionnaireResponse$json = const {
  '1': 'QuestionnaireResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.QuestionnaireResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [QuestionnaireResponse_Body$json, QuestionnaireResponse_Question$json, QuestionnaireResponse_Answer$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const QuestionnaireResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'questionnaire', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.QuestionnaireResponse.Question', '10': 'questionnaire'},
  ],
};

const QuestionnaireResponse_Question$json = const {
  '1': 'Question',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'required', '3': 4, '4': 1, '5': 8, '10': 'required'},
    const {'1': 'hasOther', '3': 5, '4': 1, '5': 8, '10': 'hasOther'},
    const {'1': 'answers', '3': 6, '4': 3, '5': 11, '6': '.antaresWallet.QuestionnaireResponse.Answer', '10': 'answers'},
  ],
};

const QuestionnaireResponse_Answer$json = const {
  '1': 'Answer',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
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
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.WalletsResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [WalletsResponse_Body$json, WalletsResponse_LykkeWalletsPayload$json, WalletsResponse_WalletAsset$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const WalletsResponse_Body$json = const {
  '1': 'Body',
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
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.WalletResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [WalletResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const WalletResponse_Body$json = const {
  '1': 'Body',
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

const SwiftCredentialsResponse$json = const {
  '1': 'SwiftCredentialsResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.SwiftCredentialsResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [SwiftCredentialsResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const SwiftCredentialsResponse_Body$json = const {
  '1': 'Body',
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
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.CountryPhoneCodesResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [CountryPhoneCodesResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const CountryPhoneCodesResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'current', '3': 1, '4': 1, '5': 9, '10': 'current'},
    const {'1': 'countriesList', '3': 2, '4': 3, '5': 11, '6': '.antaresWallet.Country', '10': 'countriesList'},
  ],
};

const BankCardPaymentDetailsResponse$json = const {
  '1': 'BankCardPaymentDetailsResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.BankCardPaymentDetailsResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [BankCardPaymentDetailsResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const BankCardPaymentDetailsResponse_Body$json = const {
  '1': 'Body',
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
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.BankCardPaymentUrlResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [BankCardPaymentUrlResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const BankCardPaymentUrlResponse_Body$json = const {
  '1': 'Body',
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
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.EthereumSettingsResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [EthereumSettingsResponse_Body$json, EthereumSettingsResponse_BitcoinFee$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const EthereumSettingsResponse_Body$json = const {
  '1': 'Body',
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

const CheckCryptoAddressResponse$json = const {
  '1': 'CheckCryptoAddressResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.CheckCryptoAddressResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [CheckCryptoAddressResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const CheckCryptoAddressResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'isValid', '3': 1, '4': 1, '5': 8, '10': 'isValid'},
  ],
};

const CryptoDepositAddressResponse$json = const {
  '1': 'CryptoDepositAddressResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.CryptoDepositAddressResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [CryptoDepositAddressResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const CryptoDepositAddressResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'tag', '3': 2, '4': 1, '5': 9, '10': 'tag'},
  ],
};

const WithdrawalCryptoInfoResponse$json = const {
  '1': 'WithdrawalCryptoInfoResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.WithdrawalCryptoInfoResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [WithdrawalCryptoInfoResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const WithdrawalCryptoInfoResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'baseAddressTitle', '3': 1, '4': 1, '5': 9, '10': 'baseAddressTitle'},
    const {'1': 'addressExtensionMandatory', '3': 2, '4': 1, '5': 8, '10': 'addressExtensionMandatory'},
    const {'1': 'addressExtensionTitle', '3': 3, '4': 1, '5': 9, '10': 'addressExtensionTitle'},
  ],
};

const SwiftCashoutInfoResponse$json = const {
  '1': 'SwiftCashoutInfoResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.SwiftCashoutInfoResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [SwiftCashoutInfoResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const SwiftCashoutInfoResponse_Body$json = const {
  '1': 'Body',
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

const SwiftCashoutResponse$json = const {
  '1': 'SwiftCashoutResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.SwiftCashoutResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [SwiftCashoutResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const SwiftCashoutResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'transferId', '3': 1, '4': 1, '5': 9, '10': 'transferId'},
  ],
};

const AppSettingsResponse$json = const {
  '1': 'AppSettingsResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.AppSettingsResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [AppSettingsResponse_Body$json, AppSettingsResponse_ApiAsset$json, AppSettingsResponse_ApiRefundSettings$json, AppSettingsResponse_ApiFeeSettings$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const AppSettingsResponse_Body$json = const {
  '1': 'Body',
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
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.PrivateWalletsResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [PrivateWalletsResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const PrivateWalletsResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'wallets', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.PrivateWallet', '10': 'wallets'},
  ],
};

const AssetDisclaimersResponse$json = const {
  '1': 'AssetDisclaimersResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.AssetDisclaimersResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [AssetDisclaimersResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const AssetDisclaimersResponse_Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'disclaimers', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.AssetDisclaimer', '10': 'disclaimers'},
  ],
};

const AssetDisclaimer$json = const {
  '1': 'AssetDisclaimer',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
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
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.SwiftCashoutFeeResponse.Body', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '3': const [SwiftCashoutFeeResponse_Body$json],
  '8': const [
    const {'1': 'result'},
  ],
};

const SwiftCashoutFeeResponse_Body$json = const {
  '1': 'Body',
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
    const {'1': 'submitDate', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'submitDate'},
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
    const {'1': 'displayId', '3': 4, '4': 1, '5': 9, '10': 'displayId'},
    const {'1': 'accuracy', '3': 5, '4': 1, '5': 5, '10': 'accuracy'},
    const {'1': 'kycNeeded', '3': 6, '4': 1, '5': 8, '10': 'kycNeeded'},
    const {'1': 'categoryId', '3': 7, '4': 1, '5': 9, '10': 'categoryId'},
    const {'1': 'cardDeposit', '3': 8, '4': 1, '5': 8, '10': 'cardDeposit'},
    const {'1': 'swiftDeposit', '3': 9, '4': 1, '5': 8, '10': 'swiftDeposit'},
    const {'1': 'blockchainDeposit', '3': 10, '4': 1, '5': 8, '10': 'blockchainDeposit'},
    const {'1': 'swiftWithdrawal', '3': 11, '4': 1, '5': 8, '10': 'swiftWithdrawal'},
    const {'1': 'forwardWithdrawal', '3': 12, '4': 1, '5': 8, '10': 'forwardWithdrawal'},
    const {'1': 'crosschainWithdrawal', '3': 13, '4': 1, '5': 8, '10': 'crosschainWithdrawal'},
    const {'1': 'isTrusted', '3': 14, '4': 1, '5': 8, '10': 'isTrusted'},
    const {'1': 'canBeBase', '3': 15, '4': 1, '5': 8, '10': 'canBeBase'},
    const {'1': 'iconUrl', '3': 16, '4': 1, '5': 9, '10': 'iconUrl'},
    const {'1': 'popularPairs', '3': 17, '4': 3, '5': 9, '10': 'popularPairs'},
    const {'1': 'blockchainWithdrawal', '3': 18, '4': 1, '5': 8, '10': 'blockchainWithdrawal'},
  ],
};

const AssetPair$json = const {
  '1': 'AssetPair',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'accuracy', '3': 2, '4': 1, '5': 5, '10': 'accuracy'},
    const {'1': 'baseAssetId', '3': 3, '4': 1, '5': 9, '10': 'baseAssetId'},
    const {'1': 'invertedAccuracy', '3': 4, '4': 1, '5': 5, '10': 'invertedAccuracy'},
    const {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'quotingAssetId', '3': 6, '4': 1, '5': 9, '10': 'quotingAssetId'},
  ],
};

const PriceUpdate$json = const {
  '1': 'PriceUpdate',
  '2': const [
    const {'1': 'assetPairId', '3': 1, '4': 1, '5': 9, '10': 'assetPairId'},
    const {'1': 'bid', '3': 2, '4': 1, '5': 9, '10': 'bid'},
    const {'1': 'ask', '3': 3, '4': 1, '5': 9, '10': 'ask'},
    const {'1': 'timestamp', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
    const {'1': 'volumeBase24H', '3': 5, '4': 1, '5': 9, '10': 'volumeBase24H'},
    const {'1': 'volumeQuote24H', '3': 6, '4': 1, '5': 9, '10': 'volumeQuote24H'},
    const {'1': 'priceChange24H', '3': 7, '4': 1, '5': 9, '10': 'priceChange24H'},
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

const OrderbookResponse$json = const {
  '1': 'OrderbookResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.Orderbook', '9': 0, '10': 'body'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '8': const [
    const {'1': 'result'},
  ],
};

const Orderbook$json = const {
  '1': 'Orderbook',
  '2': const [
    const {'1': 'assetPairId', '3': 1, '4': 1, '5': 9, '10': 'assetPairId'},
    const {'1': 'timestamp', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
    const {'1': 'bids', '3': 3, '4': 3, '5': 11, '6': '.antaresWallet.Orderbook.PriceVolume', '10': 'bids'},
    const {'1': 'asks', '3': 4, '4': 3, '5': 11, '6': '.antaresWallet.Orderbook.PriceVolume', '10': 'asks'},
  ],
  '3': const [Orderbook_PriceVolume$json],
};

const Orderbook_PriceVolume$json = const {
  '1': 'PriceVolume',
  '2': const [
    const {'1': 'p', '3': 1, '4': 1, '5': 9, '10': 'p'},
    const {'1': 'v', '3': 2, '4': 1, '5': 9, '10': 'v'},
  ],
};

const PublicTradeUpdate$json = const {
  '1': 'PublicTradeUpdate',
  '2': const [
    const {'1': 'trades', '3': 1, '4': 3, '5': 11, '6': '.antaresWallet.PublicTrade', '10': 'trades'},
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
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.antaresWallet.ErrorResponseBody', '9': 0, '10': 'error'},
  ],
  '8': const [
    const {'1': 'result'},
  ],
};

