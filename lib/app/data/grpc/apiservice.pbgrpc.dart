///
//  Generated code. Do not modify.
//  source: apiservice.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'google/protobuf/empty.pb.dart' as $0;
import 'apiservice.pb.dart' as $1;
export 'apiservice.pb.dart';

class ApiServiceClient extends $grpc.Client {
  static final _$assetsDictionary =
      $grpc.ClientMethod<$0.Empty, $1.AssetsDictionaryResponse>(
          '/antaresWallet.ApiService/AssetsDictionary',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AssetsDictionaryResponse.fromBuffer(value));
  static final _$getBaseAsset =
      $grpc.ClientMethod<$0.Empty, $1.BaseAssetResponse>(
          '/antaresWallet.ApiService/GetBaseAsset',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.BaseAssetResponse.fromBuffer(value));
  static final _$setBaseAsset =
      $grpc.ClientMethod<$1.BaseAssetUpdateRequest, $1.EmptyResponse>(
          '/antaresWallet.ApiService/SetBaseAsset',
          ($1.BaseAssetUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyResponse.fromBuffer(value));
  static final _$getAssetPairs =
      $grpc.ClientMethod<$0.Empty, $1.AssetPairsResponse>(
          '/antaresWallet.ApiService/GetAssetPairs',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AssetPairsResponse.fromBuffer(value));
  static final _$getPrices =
      $grpc.ClientMethod<$1.PricesRequest, $1.PricesResponse>(
          '/antaresWallet.ApiService/GetPrices',
          ($1.PricesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.PricesResponse.fromBuffer(value));
  static final _$getCandles =
      $grpc.ClientMethod<$1.CandlesRequest, $1.CandlesResponse>(
          '/antaresWallet.ApiService/GetCandles',
          ($1.CandlesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CandlesResponse.fromBuffer(value));
  static final _$getBalances =
      $grpc.ClientMethod<$0.Empty, $1.BalancesResponse>(
          '/antaresWallet.ApiService/GetBalances',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.BalancesResponse.fromBuffer(value));
  static final _$getOrderbook =
      $grpc.ClientMethod<$1.OrderbookRequest, $1.OrderbookResponse>(
          '/antaresWallet.ApiService/GetOrderbook',
          ($1.OrderbookRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.OrderbookResponse.fromBuffer(value));
  static final _$getMarkets =
      $grpc.ClientMethod<$1.MarketsRequest, $1.MarketsResponse>(
          '/antaresWallet.ApiService/GetMarkets',
          ($1.MarketsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.MarketsResponse.fromBuffer(value));
  static final _$getPendingActions =
      $grpc.ClientMethod<$0.Empty, $1.PendingActionsResponse>(
          '/antaresWallet.ApiService/GetPendingActions',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.PendingActionsResponse.fromBuffer(value));
  static final _$getAmountInBaseAsset =
      $grpc.ClientMethod<$1.AmountInBaseRequest, $1.AmountInBaseAssetResponse>(
          '/antaresWallet.ApiService/GetAmountInBaseAsset',
          ($1.AmountInBaseRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AmountInBaseAssetResponse.fromBuffer(value));
  static final _$getPushSettings =
      $grpc.ClientMethod<$0.Empty, $1.PushSettingsResponse>(
          '/antaresWallet.ApiService/GetPushSettings',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.PushSettingsResponse.fromBuffer(value));
  static final _$setPushSettings =
      $grpc.ClientMethod<$1.PushSettingsRequest, $1.EmptyResponse>(
          '/antaresWallet.ApiService/SetPushSettings',
          ($1.PushSettingsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyResponse.fromBuffer(value));
  static final _$registerPushNotifications =
      $grpc.ClientMethod<$1.RegisterPushRequest, $1.RegisterPushResponse>(
          '/antaresWallet.ApiService/RegisterPushNotifications',
          ($1.RegisterPushRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.RegisterPushResponse.fromBuffer(value));
  static final _$sendVerificationEmail = $grpc.ClientMethod<
          $1.VerificationEmailRequest, $1.VerificationEmailResponse>(
      '/antaresWallet.ApiService/SendVerificationEmail',
      ($1.VerificationEmailRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.VerificationEmailResponse.fromBuffer(value));
  static final _$verifyEmail =
      $grpc.ClientMethod<$1.VerifyEmailRequest, $1.VerifyResponse>(
          '/antaresWallet.ApiService/VerifyEmail',
          ($1.VerifyEmailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.VerifyResponse.fromBuffer(value));
  static final _$sendVerificationSms =
      $grpc.ClientMethod<$1.VerificationSmsRequest, $1.EmptyResponse>(
          '/antaresWallet.ApiService/SendVerificationSms',
          ($1.VerificationSmsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyResponse.fromBuffer(value));
  static final _$verifyPhone =
      $grpc.ClientMethod<$1.VerifyPhoneRequest, $1.VerifyResponse>(
          '/antaresWallet.ApiService/VerifyPhone',
          ($1.VerifyPhoneRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.VerifyResponse.fromBuffer(value));
  static final _$register =
      $grpc.ClientMethod<$1.RegisterRequest, $1.RegisterResponse>(
          '/antaresWallet.ApiService/Register',
          ($1.RegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.RegisterResponse.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$1.LoginRequest, $1.LoginResponse>(
      '/antaresWallet.ApiService/Login',
      ($1.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.LoginResponse.fromBuffer(value));
  static final _$sendLoginSms =
      $grpc.ClientMethod<$1.LoginSmsRequest, $1.EmptyResponse>(
          '/antaresWallet.ApiService/SendLoginSms',
          ($1.LoginSmsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyResponse.fromBuffer(value));
  static final _$verifyLoginSms =
      $grpc.ClientMethod<$1.VerifyLoginSmsRequest, $1.VerifyLoginSmsResponse>(
          '/antaresWallet.ApiService/VerifyLoginSms',
          ($1.VerifyLoginSmsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.VerifyLoginSmsResponse.fromBuffer(value));
  static final _$checkPin =
      $grpc.ClientMethod<$1.CheckPinRequest, $1.CheckPinResponse>(
          '/antaresWallet.ApiService/CheckPin',
          ($1.CheckPinRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CheckPinResponse.fromBuffer(value));
  static final _$isSessionExpired =
      $grpc.ClientMethod<$1.CheckSessionRequest, $1.CheckSessionResponse>(
          '/antaresWallet.ApiService/IsSessionExpired',
          ($1.CheckSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CheckSessionResponse.fromBuffer(value));
  static final _$prolongateSession =
      $grpc.ClientMethod<$0.Empty, $1.EmptyResponse>(
          '/antaresWallet.ApiService/ProlongateSession',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyResponse.fromBuffer(value));
  static final _$logout = $grpc.ClientMethod<$0.Empty, $1.EmptyResponse>(
      '/antaresWallet.ApiService/Logout',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.EmptyResponse.fromBuffer(value));
  static final _$getOrders =
      $grpc.ClientMethod<$1.LimitOrdersRequest, $1.LimitOrdersResponse>(
          '/antaresWallet.ApiService/GetOrders',
          ($1.LimitOrdersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.LimitOrdersResponse.fromBuffer(value));
  static final _$placeLimitOrder =
      $grpc.ClientMethod<$1.LimitOrderRequest, $1.PlaceOrderResponse>(
          '/antaresWallet.ApiService/PlaceLimitOrder',
          ($1.LimitOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.PlaceOrderResponse.fromBuffer(value));
  static final _$placeMarketOrder =
      $grpc.ClientMethod<$1.MarketOrderRequest, $1.PlaceOrderResponse>(
          '/antaresWallet.ApiService/PlaceMarketOrder',
          ($1.MarketOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.PlaceOrderResponse.fromBuffer(value));
  static final _$cancelAllOrders =
      $grpc.ClientMethod<$1.CancelOrdersRequest, $1.CancelOrderResponse>(
          '/antaresWallet.ApiService/CancelAllOrders',
          ($1.CancelOrdersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CancelOrderResponse.fromBuffer(value));
  static final _$cancelOrder =
      $grpc.ClientMethod<$1.CancelOrderRequest, $1.CancelOrderResponse>(
          '/antaresWallet.ApiService/CancelOrder',
          ($1.CancelOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CancelOrderResponse.fromBuffer(value));
  static final _$editOrder =
      $grpc.ClientMethod<$1.EditOrderRequest, $1.PlaceOrderResponse>(
          '/antaresWallet.ApiService/EditOrder',
          ($1.EditOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.PlaceOrderResponse.fromBuffer(value));
  static final _$getTrades =
      $grpc.ClientMethod<$1.TradesRequest, $1.TradesResponse>(
          '/antaresWallet.ApiService/GetTrades',
          ($1.TradesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.TradesResponse.fromBuffer(value));
  static final _$getAssetTrades =
      $grpc.ClientMethod<$1.AssetTradesRequest, $1.AssetTradesResponse>(
          '/antaresWallet.ApiService/GetAssetTrades',
          ($1.AssetTradesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AssetTradesResponse.fromBuffer(value));
  static final _$getFunds =
      $grpc.ClientMethod<$1.FundsRequest, $1.FundsResponse>(
          '/antaresWallet.ApiService/GetFunds',
          ($1.FundsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.FundsResponse.fromBuffer(value));
  static final _$getExplorerLinks =
      $grpc.ClientMethod<$1.ExplorerLinksRequest, $1.ExplorerLinksResponse>(
          '/antaresWallet.ApiService/GetExplorerLinks',
          ($1.ExplorerLinksRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ExplorerLinksResponse.fromBuffer(value));
  static final _$getPublicTrades =
      $grpc.ClientMethod<$1.PublicTradesRequest, $1.PublicTradesResponse>(
          '/antaresWallet.ApiService/GetPublicTrades',
          ($1.PublicTradesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.PublicTradesResponse.fromBuffer(value));
  static final _$getWatchlists =
      $grpc.ClientMethod<$0.Empty, $1.WatchlistsResponse>(
          '/antaresWallet.ApiService/GetWatchlists',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.WatchlistsResponse.fromBuffer(value));
  static final _$getWatchlist =
      $grpc.ClientMethod<$1.WatchlistRequest, $1.WatchlistResponse>(
          '/antaresWallet.ApiService/GetWatchlist',
          ($1.WatchlistRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.WatchlistResponse.fromBuffer(value));
  static final _$addWatchlist =
      $grpc.ClientMethod<$1.AddWatchlistRequest, $1.WatchlistResponse>(
          '/antaresWallet.ApiService/AddWatchlist',
          ($1.AddWatchlistRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.WatchlistResponse.fromBuffer(value));
  static final _$updateWatchlist =
      $grpc.ClientMethod<$1.UpdateWatchlistRequest, $1.WatchlistResponse>(
          '/antaresWallet.ApiService/UpdateWatchlist',
          ($1.UpdateWatchlistRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.WatchlistResponse.fromBuffer(value));
  static final _$deleteWatchlist =
      $grpc.ClientMethod<$1.DeleteWatchlistRequest, $1.EmptyResponse>(
          '/antaresWallet.ApiService/DeleteWatchlist',
          ($1.DeleteWatchlistRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyResponse.fromBuffer(value));
  static final _$getTierInfo =
      $grpc.ClientMethod<$0.Empty, $1.TierInfoResponse>(
          '/antaresWallet.ApiService/GetTierInfo',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.TierInfoResponse.fromBuffer(value));
  static final _$getPersonalData =
      $grpc.ClientMethod<$0.Empty, $1.PersonalDataResponse>(
          '/antaresWallet.ApiService/GetPersonalData',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.PersonalDataResponse.fromBuffer(value));
  static final _$getKycDocuments =
      $grpc.ClientMethod<$0.Empty, $1.KycDocumentsResponse>(
          '/antaresWallet.ApiService/GetKycDocuments',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.KycDocumentsResponse.fromBuffer(value));
  static final _$setAddress =
      $grpc.ClientMethod<$1.SetAddressRequest, $1.EmptyResponse>(
          '/antaresWallet.ApiService/SetAddress',
          ($1.SetAddressRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyResponse.fromBuffer(value));
  static final _$setZip =
      $grpc.ClientMethod<$1.SetZipRequest, $1.EmptyResponse>(
          '/antaresWallet.ApiService/SetZip',
          ($1.SetZipRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyResponse.fromBuffer(value));
  static final _$uploadKycFile =
      $grpc.ClientMethod<$1.KycFileRequest, $1.EmptyResponse>(
          '/antaresWallet.ApiService/UploadKycFile',
          ($1.KycFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyResponse.fromBuffer(value));
  static final _$getQuestionnaire =
      $grpc.ClientMethod<$0.Empty, $1.QuestionnaireResponse>(
          '/antaresWallet.ApiService/GetQuestionnaire',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.QuestionnaireResponse.fromBuffer(value));
  static final _$saveQuestionnaire =
      $grpc.ClientMethod<$1.AnswersRequest, $1.EmptyResponse>(
          '/antaresWallet.ApiService/SaveQuestionnaire',
          ($1.AnswersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyResponse.fromBuffer(value));
  static final _$submitProfile =
      $grpc.ClientMethod<$1.SubmitProfileRequest, $1.EmptyResponse>(
          '/antaresWallet.ApiService/SubmitProfile',
          ($1.SubmitProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyResponse.fromBuffer(value));
  static final _$getWallets = $grpc.ClientMethod<$0.Empty, $1.WalletsResponse>(
      '/antaresWallet.ApiService/GetWallets',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.WalletsResponse.fromBuffer(value));
  static final _$getWallet =
      $grpc.ClientMethod<$1.WalletRequest, $1.WalletResponse>(
          '/antaresWallet.ApiService/GetWallet',
          ($1.WalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.WalletResponse.fromBuffer(value));
  static final _$getSwiftCredentials = $grpc.ClientMethod<
          $1.SwiftCredentialsRequest, $1.SwiftCredentialsResponse>(
      '/antaresWallet.ApiService/GetSwiftCredentials',
      ($1.SwiftCredentialsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.SwiftCredentialsResponse.fromBuffer(value));
  static final _$sendBankTransferRequest =
      $grpc.ClientMethod<$1.BankTransferRequest, $1.EmptyResponse>(
          '/antaresWallet.ApiService/SendBankTransferRequest',
          ($1.BankTransferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyResponse.fromBuffer(value));
  static final _$getCountryPhoneCodes =
      $grpc.ClientMethod<$0.Empty, $1.CountryPhoneCodesResponse>(
          '/antaresWallet.ApiService/GetCountryPhoneCodes',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CountryPhoneCodesResponse.fromBuffer(value));
  static final _$getBankCardPaymentDetails =
      $grpc.ClientMethod<$0.Empty, $1.BankCardPaymentDetailsResponse>(
          '/antaresWallet.ApiService/GetBankCardPaymentDetails',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.BankCardPaymentDetailsResponse.fromBuffer(value));
  static final _$getBankCardPaymentUrl = $grpc.ClientMethod<
          $1.BankCardPaymentUrlRequest, $1.BankCardPaymentUrlResponse>(
      '/antaresWallet.ApiService/GetBankCardPaymentUrl',
      ($1.BankCardPaymentUrlRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.BankCardPaymentUrlResponse.fromBuffer(value));
  static final _$getEthereumSettings =
      $grpc.ClientMethod<$0.Empty, $1.EthereumSettingsResponse>(
          '/antaresWallet.ApiService/GetEthereumSettings',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.EthereumSettingsResponse.fromBuffer(value));
  static final _$getCryptoDepositAddress = $grpc.ClientMethod<
          $1.CryptoDepositAddressRequest, $1.CryptoDepositAddressResponse>(
      '/antaresWallet.ApiService/GetCryptoDepositAddress',
      ($1.CryptoDepositAddressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.CryptoDepositAddressResponse.fromBuffer(value));
  static final _$getWithdrawalCryptoInfo = $grpc.ClientMethod<
          $1.WithdrawalCryptoInfoRequest, $1.WithdrawalCryptoInfoResponse>(
      '/antaresWallet.ApiService/GetWithdrawalCryptoInfo',
      ($1.WithdrawalCryptoInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.WithdrawalCryptoInfoResponse.fromBuffer(value));
  static final _$isCryptoAddressValid = $grpc.ClientMethod<
          $1.CheckCryptoAddressRequest, $1.CheckCryptoAddressResponse>(
      '/antaresWallet.ApiService/IsCryptoAddressValid',
      ($1.CheckCryptoAddressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.CheckCryptoAddressResponse.fromBuffer(value));
  static final _$getSwiftCashoutInfo =
      $grpc.ClientMethod<$0.Empty, $1.SwiftCashoutInfoResponse>(
          '/antaresWallet.ApiService/GetSwiftCashoutInfo',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.SwiftCashoutInfoResponse.fromBuffer(value));
  static final _$getSwiftCashoutFee =
      $grpc.ClientMethod<$1.SwiftCashoutFeeRequest, $1.SwiftCashoutFeeResponse>(
          '/antaresWallet.ApiService/GetSwiftCashoutFee',
          ($1.SwiftCashoutFeeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.SwiftCashoutFeeResponse.fromBuffer(value));
  static final _$swiftCashout =
      $grpc.ClientMethod<$1.SwiftCashoutRequest, $1.SwiftCashoutResponse>(
          '/antaresWallet.ApiService/SwiftCashout',
          ($1.SwiftCashoutRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.SwiftCashoutResponse.fromBuffer(value));
  static final _$cryptoCashout =
      $grpc.ClientMethod<$1.CryptoCashoutRequest, $1.EmptyResponse>(
          '/antaresWallet.ApiService/CryptoCashout',
          ($1.CryptoCashoutRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyResponse.fromBuffer(value));
  static final _$getAppSettings =
      $grpc.ClientMethod<$0.Empty, $1.AppSettingsResponse>(
          '/antaresWallet.ApiService/GetAppSettings',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AppSettingsResponse.fromBuffer(value));
  static final _$getPrivateWallets =
      $grpc.ClientMethod<$0.Empty, $1.PrivateWalletsResponse>(
          '/antaresWallet.ApiService/GetPrivateWallets',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.PrivateWalletsResponse.fromBuffer(value));
  static final _$getAssetDisclaimers =
      $grpc.ClientMethod<$0.Empty, $1.AssetDisclaimersResponse>(
          '/antaresWallet.ApiService/GetAssetDisclaimers',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AssetDisclaimersResponse.fromBuffer(value));
  static final _$approveAssetDisclaimer =
      $grpc.ClientMethod<$1.AssetDisclaimerRequest, $1.EmptyResponse>(
          '/antaresWallet.ApiService/ApproveAssetDisclaimer',
          ($1.AssetDisclaimerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyResponse.fromBuffer(value));
  static final _$declineAssetDisclaimer =
      $grpc.ClientMethod<$1.AssetDisclaimerRequest, $1.EmptyResponse>(
          '/antaresWallet.ApiService/DeclineAssetDisclaimer',
          ($1.AssetDisclaimerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyResponse.fromBuffer(value));
  static final _$getPriceUpdates =
      $grpc.ClientMethod<$1.PriceUpdatesRequest, $1.PriceUpdate>(
          '/antaresWallet.ApiService/GetPriceUpdates',
          ($1.PriceUpdatesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.PriceUpdate.fromBuffer(value));
  static final _$getCandleUpdates =
      $grpc.ClientMethod<$1.CandleUpdatesRequest, $1.CandleUpdate>(
          '/antaresWallet.ApiService/GetCandleUpdates',
          ($1.CandleUpdatesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.CandleUpdate.fromBuffer(value));
  static final _$getOrderbookUpdates =
      $grpc.ClientMethod<$1.OrderbookUpdatesRequest, $1.Orderbook>(
          '/antaresWallet.ApiService/GetOrderbookUpdates',
          ($1.OrderbookUpdatesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Orderbook.fromBuffer(value));
  static final _$getPublicTradeUpdates =
      $grpc.ClientMethod<$1.PublicTradesUpdatesRequest, $1.PublicTradeUpdate>(
          '/antaresWallet.ApiService/GetPublicTradeUpdates',
          ($1.PublicTradesUpdatesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.PublicTradeUpdate.fromBuffer(value));

  ApiServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.AssetsDictionaryResponse> assetsDictionary(
      $0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$assetsDictionary, request, options: options);
  }

  $grpc.ResponseFuture<$1.BaseAssetResponse> getBaseAsset($0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getBaseAsset, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyResponse> setBaseAsset(
      $1.BaseAssetUpdateRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$setBaseAsset, request, options: options);
  }

  $grpc.ResponseFuture<$1.AssetPairsResponse> getAssetPairs($0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getAssetPairs, request, options: options);
  }

  $grpc.ResponseFuture<$1.PricesResponse> getPrices($1.PricesRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getPrices, request, options: options);
  }

  $grpc.ResponseFuture<$1.CandlesResponse> getCandles($1.CandlesRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getCandles, request, options: options);
  }

  $grpc.ResponseFuture<$1.BalancesResponse> getBalances($0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getBalances, request, options: options);
  }

  $grpc.ResponseFuture<$1.OrderbookResponse> getOrderbook(
      $1.OrderbookRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getOrderbook, request, options: options);
  }

  $grpc.ResponseFuture<$1.MarketsResponse> getMarkets($1.MarketsRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getMarkets, request, options: options);
  }

  $grpc.ResponseFuture<$1.PendingActionsResponse> getPendingActions(
      $0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getPendingActions, request, options: options);
  }

  $grpc.ResponseFuture<$1.AmountInBaseAssetResponse> getAmountInBaseAsset(
      $1.AmountInBaseRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getAmountInBaseAsset, request, options: options);
  }

  $grpc.ResponseFuture<$1.PushSettingsResponse> getPushSettings(
      $0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getPushSettings, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyResponse> setPushSettings(
      $1.PushSettingsRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$setPushSettings, request, options: options);
  }

  $grpc.ResponseFuture<$1.RegisterPushResponse> registerPushNotifications(
      $1.RegisterPushRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$registerPushNotifications, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.VerificationEmailResponse> sendVerificationEmail(
      $1.VerificationEmailRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$sendVerificationEmail, request, options: options);
  }

  $grpc.ResponseFuture<$1.VerifyResponse> verifyEmail(
      $1.VerifyEmailRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$verifyEmail, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyResponse> sendVerificationSms(
      $1.VerificationSmsRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$sendVerificationSms, request, options: options);
  }

  $grpc.ResponseFuture<$1.VerifyResponse> verifyPhone(
      $1.VerifyPhoneRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$verifyPhone, request, options: options);
  }

  $grpc.ResponseFuture<$1.RegisterResponse> register($1.RegisterRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$1.LoginResponse> login($1.LoginRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyResponse> sendLoginSms(
      $1.LoginSmsRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$sendLoginSms, request, options: options);
  }

  $grpc.ResponseFuture<$1.VerifyLoginSmsResponse> verifyLoginSms(
      $1.VerifyLoginSmsRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$verifyLoginSms, request, options: options);
  }

  $grpc.ResponseFuture<$1.CheckPinResponse> checkPin($1.CheckPinRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$checkPin, request, options: options);
  }

  $grpc.ResponseFuture<$1.CheckSessionResponse> isSessionExpired(
      $1.CheckSessionRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$isSessionExpired, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyResponse> prolongateSession($0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$prolongateSession, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyResponse> logout($0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$logout, request, options: options);
  }

  $grpc.ResponseFuture<$1.LimitOrdersResponse> getOrders(
      $1.LimitOrdersRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getOrders, request, options: options);
  }

  $grpc.ResponseFuture<$1.PlaceOrderResponse> placeLimitOrder(
      $1.LimitOrderRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$placeLimitOrder, request, options: options);
  }

  $grpc.ResponseFuture<$1.PlaceOrderResponse> placeMarketOrder(
      $1.MarketOrderRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$placeMarketOrder, request, options: options);
  }

  $grpc.ResponseFuture<$1.CancelOrderResponse> cancelAllOrders(
      $1.CancelOrdersRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$cancelAllOrders, request, options: options);
  }

  $grpc.ResponseFuture<$1.CancelOrderResponse> cancelOrder(
      $1.CancelOrderRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$cancelOrder, request, options: options);
  }

  $grpc.ResponseFuture<$1.PlaceOrderResponse> editOrder(
      $1.EditOrderRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$editOrder, request, options: options);
  }

  $grpc.ResponseFuture<$1.TradesResponse> getTrades($1.TradesRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getTrades, request, options: options);
  }

  $grpc.ResponseFuture<$1.AssetTradesResponse> getAssetTrades(
      $1.AssetTradesRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getAssetTrades, request, options: options);
  }

  $grpc.ResponseFuture<$1.FundsResponse> getFunds($1.FundsRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getFunds, request, options: options);
  }

  $grpc.ResponseFuture<$1.ExplorerLinksResponse> getExplorerLinks(
      $1.ExplorerLinksRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getExplorerLinks, request, options: options);
  }

  $grpc.ResponseFuture<$1.PublicTradesResponse> getPublicTrades(
      $1.PublicTradesRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getPublicTrades, request, options: options);
  }

  $grpc.ResponseFuture<$1.WatchlistsResponse> getWatchlists($0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getWatchlists, request, options: options);
  }

  $grpc.ResponseFuture<$1.WatchlistResponse> getWatchlist(
      $1.WatchlistRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getWatchlist, request, options: options);
  }

  $grpc.ResponseFuture<$1.WatchlistResponse> addWatchlist(
      $1.AddWatchlistRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$addWatchlist, request, options: options);
  }

  $grpc.ResponseFuture<$1.WatchlistResponse> updateWatchlist(
      $1.UpdateWatchlistRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$updateWatchlist, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyResponse> deleteWatchlist(
      $1.DeleteWatchlistRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$deleteWatchlist, request, options: options);
  }

  $grpc.ResponseFuture<$1.TierInfoResponse> getTierInfo($0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getTierInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.PersonalDataResponse> getPersonalData(
      $0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getPersonalData, request, options: options);
  }

  $grpc.ResponseFuture<$1.KycDocumentsResponse> getKycDocuments(
      $0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getKycDocuments, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyResponse> setAddress(
      $1.SetAddressRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$setAddress, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyResponse> setZip($1.SetZipRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$setZip, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyResponse> uploadKycFile(
      $1.KycFileRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$uploadKycFile, request, options: options);
  }

  $grpc.ResponseFuture<$1.QuestionnaireResponse> getQuestionnaire(
      $0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getQuestionnaire, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyResponse> saveQuestionnaire(
      $1.AnswersRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$saveQuestionnaire, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyResponse> submitProfile(
      $1.SubmitProfileRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$submitProfile, request, options: options);
  }

  $grpc.ResponseFuture<$1.WalletsResponse> getWallets($0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getWallets, request, options: options);
  }

  $grpc.ResponseFuture<$1.WalletResponse> getWallet($1.WalletRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getWallet, request, options: options);
  }

  $grpc.ResponseFuture<$1.SwiftCredentialsResponse> getSwiftCredentials(
      $1.SwiftCredentialsRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getSwiftCredentials, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyResponse> sendBankTransferRequest(
      $1.BankTransferRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$sendBankTransferRequest, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.CountryPhoneCodesResponse> getCountryPhoneCodes(
      $0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getCountryPhoneCodes, request, options: options);
  }

  $grpc.ResponseFuture<$1.BankCardPaymentDetailsResponse>
      getBankCardPaymentDetails($0.Empty request, {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getBankCardPaymentDetails, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.BankCardPaymentUrlResponse> getBankCardPaymentUrl(
      $1.BankCardPaymentUrlRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getBankCardPaymentUrl, request, options: options);
  }

  $grpc.ResponseFuture<$1.EthereumSettingsResponse> getEthereumSettings(
      $0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getEthereumSettings, request, options: options);
  }

  $grpc.ResponseFuture<$1.CryptoDepositAddressResponse> getCryptoDepositAddress(
      $1.CryptoDepositAddressRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getCryptoDepositAddress, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.WithdrawalCryptoInfoResponse> getWithdrawalCryptoInfo(
      $1.WithdrawalCryptoInfoRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getWithdrawalCryptoInfo, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.CheckCryptoAddressResponse> isCryptoAddressValid(
      $1.CheckCryptoAddressRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$isCryptoAddressValid, request, options: options);
  }

  $grpc.ResponseFuture<$1.SwiftCashoutInfoResponse> getSwiftCashoutInfo(
      $0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getSwiftCashoutInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.SwiftCashoutFeeResponse> getSwiftCashoutFee(
      $1.SwiftCashoutFeeRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getSwiftCashoutFee, request, options: options);
  }

  $grpc.ResponseFuture<$1.SwiftCashoutResponse> swiftCashout(
      $1.SwiftCashoutRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$swiftCashout, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyResponse> cryptoCashout(
      $1.CryptoCashoutRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$cryptoCashout, request, options: options);
  }

  $grpc.ResponseFuture<$1.AppSettingsResponse> getAppSettings($0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getAppSettings, request, options: options);
  }

  $grpc.ResponseFuture<$1.PrivateWalletsResponse> getPrivateWallets(
      $0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getPrivateWallets, request, options: options);
  }

  $grpc.ResponseFuture<$1.AssetDisclaimersResponse> getAssetDisclaimers(
      $0.Empty request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getAssetDisclaimers, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyResponse> approveAssetDisclaimer(
      $1.AssetDisclaimerRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$approveAssetDisclaimer, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.EmptyResponse> declineAssetDisclaimer(
      $1.AssetDisclaimerRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$declineAssetDisclaimer, request,
        options: options);
  }

  $grpc.ResponseStream<$1.PriceUpdate> getPriceUpdates(
      $1.PriceUpdatesRequest request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$getPriceUpdates, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$1.CandleUpdate> getCandleUpdates(
      $1.CandleUpdatesRequest request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$getCandleUpdates, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$1.Orderbook> getOrderbookUpdates(
      $1.OrderbookUpdatesRequest request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$getOrderbookUpdates, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$1.PublicTradeUpdate> getPublicTradeUpdates(
      $1.PublicTradesUpdatesRequest request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$getPublicTradeUpdates, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class ApiServiceBase extends $grpc.Service {
  $core.String get $name => 'antaresWallet.ApiService';

  ApiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.AssetsDictionaryResponse>(
        'AssetsDictionary',
        assetsDictionary_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.AssetsDictionaryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.BaseAssetResponse>(
        'GetBaseAsset',
        getBaseAsset_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.BaseAssetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.BaseAssetUpdateRequest, $1.EmptyResponse>(
        'SetBaseAsset',
        setBaseAsset_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.BaseAssetUpdateRequest.fromBuffer(value),
        ($1.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.AssetPairsResponse>(
        'GetAssetPairs',
        getAssetPairs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.AssetPairsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PricesRequest, $1.PricesResponse>(
        'GetPrices',
        getPrices_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PricesRequest.fromBuffer(value),
        ($1.PricesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CandlesRequest, $1.CandlesResponse>(
        'GetCandles',
        getCandles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CandlesRequest.fromBuffer(value),
        ($1.CandlesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.BalancesResponse>(
        'GetBalances',
        getBalances_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.BalancesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.OrderbookRequest, $1.OrderbookResponse>(
        'GetOrderbook',
        getOrderbook_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.OrderbookRequest.fromBuffer(value),
        ($1.OrderbookResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.MarketsRequest, $1.MarketsResponse>(
        'GetMarkets',
        getMarkets_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.MarketsRequest.fromBuffer(value),
        ($1.MarketsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.PendingActionsResponse>(
        'GetPendingActions',
        getPendingActions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.PendingActionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AmountInBaseRequest,
            $1.AmountInBaseAssetResponse>(
        'GetAmountInBaseAsset',
        getAmountInBaseAsset_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.AmountInBaseRequest.fromBuffer(value),
        ($1.AmountInBaseAssetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.PushSettingsResponse>(
        'GetPushSettings',
        getPushSettings_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.PushSettingsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PushSettingsRequest, $1.EmptyResponse>(
        'SetPushSettings',
        setPushSettings_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.PushSettingsRequest.fromBuffer(value),
        ($1.EmptyResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.RegisterPushRequest, $1.RegisterPushResponse>(
            'RegisterPushNotifications',
            registerPushNotifications_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.RegisterPushRequest.fromBuffer(value),
            ($1.RegisterPushResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.VerificationEmailRequest,
            $1.VerificationEmailResponse>(
        'SendVerificationEmail',
        sendVerificationEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.VerificationEmailRequest.fromBuffer(value),
        ($1.VerificationEmailResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.VerifyEmailRequest, $1.VerifyResponse>(
        'VerifyEmail',
        verifyEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.VerifyEmailRequest.fromBuffer(value),
        ($1.VerifyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.VerificationSmsRequest, $1.EmptyResponse>(
        'SendVerificationSms',
        sendVerificationSms_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.VerificationSmsRequest.fromBuffer(value),
        ($1.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.VerifyPhoneRequest, $1.VerifyResponse>(
        'VerifyPhone',
        verifyPhone_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.VerifyPhoneRequest.fromBuffer(value),
        ($1.VerifyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RegisterRequest, $1.RegisterResponse>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RegisterRequest.fromBuffer(value),
        ($1.RegisterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.LoginRequest, $1.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.LoginRequest.fromBuffer(value),
        ($1.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.LoginSmsRequest, $1.EmptyResponse>(
        'SendLoginSms',
        sendLoginSms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.LoginSmsRequest.fromBuffer(value),
        ($1.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.VerifyLoginSmsRequest,
            $1.VerifyLoginSmsResponse>(
        'VerifyLoginSms',
        verifyLoginSms_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.VerifyLoginSmsRequest.fromBuffer(value),
        ($1.VerifyLoginSmsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CheckPinRequest, $1.CheckPinResponse>(
        'CheckPin',
        checkPin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CheckPinRequest.fromBuffer(value),
        ($1.CheckPinResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.CheckSessionRequest, $1.CheckSessionResponse>(
            'IsSessionExpired',
            isSessionExpired_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.CheckSessionRequest.fromBuffer(value),
            ($1.CheckSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.EmptyResponse>(
        'ProlongateSession',
        prolongateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.EmptyResponse>(
        'Logout',
        logout_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.EmptyResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.LimitOrdersRequest, $1.LimitOrdersResponse>(
            'GetOrders',
            getOrders_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.LimitOrdersRequest.fromBuffer(value),
            ($1.LimitOrdersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.LimitOrderRequest, $1.PlaceOrderResponse>(
        'PlaceLimitOrder',
        placeLimitOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.LimitOrderRequest.fromBuffer(value),
        ($1.PlaceOrderResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.MarketOrderRequest, $1.PlaceOrderResponse>(
            'PlaceMarketOrder',
            placeMarketOrder_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.MarketOrderRequest.fromBuffer(value),
            ($1.PlaceOrderResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.CancelOrdersRequest, $1.CancelOrderResponse>(
            'CancelAllOrders',
            cancelAllOrders_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.CancelOrdersRequest.fromBuffer(value),
            ($1.CancelOrderResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.CancelOrderRequest, $1.CancelOrderResponse>(
            'CancelOrder',
            cancelOrder_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.CancelOrderRequest.fromBuffer(value),
            ($1.CancelOrderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.EditOrderRequest, $1.PlaceOrderResponse>(
        'EditOrder',
        editOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.EditOrderRequest.fromBuffer(value),
        ($1.PlaceOrderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.TradesRequest, $1.TradesResponse>(
        'GetTrades',
        getTrades_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.TradesRequest.fromBuffer(value),
        ($1.TradesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.AssetTradesRequest, $1.AssetTradesResponse>(
            'GetAssetTrades',
            getAssetTrades_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.AssetTradesRequest.fromBuffer(value),
            ($1.AssetTradesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.FundsRequest, $1.FundsResponse>(
        'GetFunds',
        getFunds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.FundsRequest.fromBuffer(value),
        ($1.FundsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ExplorerLinksRequest, $1.ExplorerLinksResponse>(
            'GetExplorerLinks',
            getExplorerLinks_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ExplorerLinksRequest.fromBuffer(value),
            ($1.ExplorerLinksResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.PublicTradesRequest, $1.PublicTradesResponse>(
            'GetPublicTrades',
            getPublicTrades_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.PublicTradesRequest.fromBuffer(value),
            ($1.PublicTradesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.WatchlistsResponse>(
        'GetWatchlists',
        getWatchlists_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.WatchlistsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.WatchlistRequest, $1.WatchlistResponse>(
        'GetWatchlist',
        getWatchlist_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.WatchlistRequest.fromBuffer(value),
        ($1.WatchlistResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.AddWatchlistRequest, $1.WatchlistResponse>(
            'AddWatchlist',
            addWatchlist_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.AddWatchlistRequest.fromBuffer(value),
            ($1.WatchlistResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.UpdateWatchlistRequest, $1.WatchlistResponse>(
            'UpdateWatchlist',
            updateWatchlist_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.UpdateWatchlistRequest.fromBuffer(value),
            ($1.WatchlistResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteWatchlistRequest, $1.EmptyResponse>(
        'DeleteWatchlist',
        deleteWatchlist_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.DeleteWatchlistRequest.fromBuffer(value),
        ($1.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.TierInfoResponse>(
        'GetTierInfo',
        getTierInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.TierInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.PersonalDataResponse>(
        'GetPersonalData',
        getPersonalData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.PersonalDataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.KycDocumentsResponse>(
        'GetKycDocuments',
        getKycDocuments_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.KycDocumentsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SetAddressRequest, $1.EmptyResponse>(
        'SetAddress',
        setAddress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SetAddressRequest.fromBuffer(value),
        ($1.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SetZipRequest, $1.EmptyResponse>(
        'SetZip',
        setZip_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SetZipRequest.fromBuffer(value),
        ($1.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.KycFileRequest, $1.EmptyResponse>(
        'UploadKycFile',
        uploadKycFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.KycFileRequest.fromBuffer(value),
        ($1.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.QuestionnaireResponse>(
        'GetQuestionnaire',
        getQuestionnaire_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.QuestionnaireResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AnswersRequest, $1.EmptyResponse>(
        'SaveQuestionnaire',
        saveQuestionnaire_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AnswersRequest.fromBuffer(value),
        ($1.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SubmitProfileRequest, $1.EmptyResponse>(
        'SubmitProfile',
        submitProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.SubmitProfileRequest.fromBuffer(value),
        ($1.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.WalletsResponse>(
        'GetWallets',
        getWallets_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.WalletsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.WalletRequest, $1.WalletResponse>(
        'GetWallet',
        getWallet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.WalletRequest.fromBuffer(value),
        ($1.WalletResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SwiftCredentialsRequest,
            $1.SwiftCredentialsResponse>(
        'GetSwiftCredentials',
        getSwiftCredentials_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.SwiftCredentialsRequest.fromBuffer(value),
        ($1.SwiftCredentialsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.BankTransferRequest, $1.EmptyResponse>(
        'SendBankTransferRequest',
        sendBankTransferRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.BankTransferRequest.fromBuffer(value),
        ($1.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.CountryPhoneCodesResponse>(
        'GetCountryPhoneCodes',
        getCountryPhoneCodes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.CountryPhoneCodesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.BankCardPaymentDetailsResponse>(
        'GetBankCardPaymentDetails',
        getBankCardPaymentDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.BankCardPaymentDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.BankCardPaymentUrlRequest,
            $1.BankCardPaymentUrlResponse>(
        'GetBankCardPaymentUrl',
        getBankCardPaymentUrl_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.BankCardPaymentUrlRequest.fromBuffer(value),
        ($1.BankCardPaymentUrlResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.EthereumSettingsResponse>(
        'GetEthereumSettings',
        getEthereumSettings_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.EthereumSettingsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CryptoDepositAddressRequest,
            $1.CryptoDepositAddressResponse>(
        'GetCryptoDepositAddress',
        getCryptoDepositAddress_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.CryptoDepositAddressRequest.fromBuffer(value),
        ($1.CryptoDepositAddressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.WithdrawalCryptoInfoRequest,
            $1.WithdrawalCryptoInfoResponse>(
        'GetWithdrawalCryptoInfo',
        getWithdrawalCryptoInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.WithdrawalCryptoInfoRequest.fromBuffer(value),
        ($1.WithdrawalCryptoInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CheckCryptoAddressRequest,
            $1.CheckCryptoAddressResponse>(
        'IsCryptoAddressValid',
        isCryptoAddressValid_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.CheckCryptoAddressRequest.fromBuffer(value),
        ($1.CheckCryptoAddressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.SwiftCashoutInfoResponse>(
        'GetSwiftCashoutInfo',
        getSwiftCashoutInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.SwiftCashoutInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SwiftCashoutFeeRequest,
            $1.SwiftCashoutFeeResponse>(
        'GetSwiftCashoutFee',
        getSwiftCashoutFee_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.SwiftCashoutFeeRequest.fromBuffer(value),
        ($1.SwiftCashoutFeeResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.SwiftCashoutRequest, $1.SwiftCashoutResponse>(
            'SwiftCashout',
            swiftCashout_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.SwiftCashoutRequest.fromBuffer(value),
            ($1.SwiftCashoutResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CryptoCashoutRequest, $1.EmptyResponse>(
        'CryptoCashout',
        cryptoCashout_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.CryptoCashoutRequest.fromBuffer(value),
        ($1.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.AppSettingsResponse>(
        'GetAppSettings',
        getAppSettings_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.AppSettingsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.PrivateWalletsResponse>(
        'GetPrivateWallets',
        getPrivateWallets_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.PrivateWalletsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.AssetDisclaimersResponse>(
        'GetAssetDisclaimers',
        getAssetDisclaimers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.AssetDisclaimersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AssetDisclaimerRequest, $1.EmptyResponse>(
        'ApproveAssetDisclaimer',
        approveAssetDisclaimer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.AssetDisclaimerRequest.fromBuffer(value),
        ($1.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AssetDisclaimerRequest, $1.EmptyResponse>(
        'DeclineAssetDisclaimer',
        declineAssetDisclaimer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.AssetDisclaimerRequest.fromBuffer(value),
        ($1.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PriceUpdatesRequest, $1.PriceUpdate>(
        'GetPriceUpdates',
        getPriceUpdates_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $1.PriceUpdatesRequest.fromBuffer(value),
        ($1.PriceUpdate value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CandleUpdatesRequest, $1.CandleUpdate>(
        'GetCandleUpdates',
        getCandleUpdates_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $1.CandleUpdatesRequest.fromBuffer(value),
        ($1.CandleUpdate value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.OrderbookUpdatesRequest, $1.Orderbook>(
        'GetOrderbookUpdates',
        getOrderbookUpdates_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $1.OrderbookUpdatesRequest.fromBuffer(value),
        ($1.Orderbook value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PublicTradesUpdatesRequest,
            $1.PublicTradeUpdate>(
        'GetPublicTradeUpdates',
        getPublicTradeUpdates_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $1.PublicTradesUpdatesRequest.fromBuffer(value),
        ($1.PublicTradeUpdate value) => value.writeToBuffer()));
  }

  $async.Future<$1.AssetsDictionaryResponse> assetsDictionary_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return assetsDictionary(call, await request);
  }

  $async.Future<$1.BaseAssetResponse> getBaseAsset_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getBaseAsset(call, await request);
  }

  $async.Future<$1.EmptyResponse> setBaseAsset_Pre($grpc.ServiceCall call,
      $async.Future<$1.BaseAssetUpdateRequest> request) async {
    return setBaseAsset(call, await request);
  }

  $async.Future<$1.AssetPairsResponse> getAssetPairs_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getAssetPairs(call, await request);
  }

  $async.Future<$1.PricesResponse> getPrices_Pre(
      $grpc.ServiceCall call, $async.Future<$1.PricesRequest> request) async {
    return getPrices(call, await request);
  }

  $async.Future<$1.CandlesResponse> getCandles_Pre(
      $grpc.ServiceCall call, $async.Future<$1.CandlesRequest> request) async {
    return getCandles(call, await request);
  }

  $async.Future<$1.BalancesResponse> getBalances_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getBalances(call, await request);
  }

  $async.Future<$1.OrderbookResponse> getOrderbook_Pre($grpc.ServiceCall call,
      $async.Future<$1.OrderbookRequest> request) async {
    return getOrderbook(call, await request);
  }

  $async.Future<$1.MarketsResponse> getMarkets_Pre(
      $grpc.ServiceCall call, $async.Future<$1.MarketsRequest> request) async {
    return getMarkets(call, await request);
  }

  $async.Future<$1.PendingActionsResponse> getPendingActions_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getPendingActions(call, await request);
  }

  $async.Future<$1.AmountInBaseAssetResponse> getAmountInBaseAsset_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AmountInBaseRequest> request) async {
    return getAmountInBaseAsset(call, await request);
  }

  $async.Future<$1.PushSettingsResponse> getPushSettings_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getPushSettings(call, await request);
  }

  $async.Future<$1.EmptyResponse> setPushSettings_Pre($grpc.ServiceCall call,
      $async.Future<$1.PushSettingsRequest> request) async {
    return setPushSettings(call, await request);
  }

  $async.Future<$1.RegisterPushResponse> registerPushNotifications_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.RegisterPushRequest> request) async {
    return registerPushNotifications(call, await request);
  }

  $async.Future<$1.VerificationEmailResponse> sendVerificationEmail_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.VerificationEmailRequest> request) async {
    return sendVerificationEmail(call, await request);
  }

  $async.Future<$1.VerifyResponse> verifyEmail_Pre($grpc.ServiceCall call,
      $async.Future<$1.VerifyEmailRequest> request) async {
    return verifyEmail(call, await request);
  }

  $async.Future<$1.EmptyResponse> sendVerificationSms_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.VerificationSmsRequest> request) async {
    return sendVerificationSms(call, await request);
  }

  $async.Future<$1.VerifyResponse> verifyPhone_Pre($grpc.ServiceCall call,
      $async.Future<$1.VerifyPhoneRequest> request) async {
    return verifyPhone(call, await request);
  }

  $async.Future<$1.RegisterResponse> register_Pre(
      $grpc.ServiceCall call, $async.Future<$1.RegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$1.LoginResponse> login_Pre(
      $grpc.ServiceCall call, $async.Future<$1.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$1.EmptyResponse> sendLoginSms_Pre(
      $grpc.ServiceCall call, $async.Future<$1.LoginSmsRequest> request) async {
    return sendLoginSms(call, await request);
  }

  $async.Future<$1.VerifyLoginSmsResponse> verifyLoginSms_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.VerifyLoginSmsRequest> request) async {
    return verifyLoginSms(call, await request);
  }

  $async.Future<$1.CheckPinResponse> checkPin_Pre(
      $grpc.ServiceCall call, $async.Future<$1.CheckPinRequest> request) async {
    return checkPin(call, await request);
  }

  $async.Future<$1.CheckSessionResponse> isSessionExpired_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.CheckSessionRequest> request) async {
    return isSessionExpired(call, await request);
  }

  $async.Future<$1.EmptyResponse> prolongateSession_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return prolongateSession(call, await request);
  }

  $async.Future<$1.EmptyResponse> logout_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return logout(call, await request);
  }

  $async.Future<$1.LimitOrdersResponse> getOrders_Pre($grpc.ServiceCall call,
      $async.Future<$1.LimitOrdersRequest> request) async {
    return getOrders(call, await request);
  }

  $async.Future<$1.PlaceOrderResponse> placeLimitOrder_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.LimitOrderRequest> request) async {
    return placeLimitOrder(call, await request);
  }

  $async.Future<$1.PlaceOrderResponse> placeMarketOrder_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.MarketOrderRequest> request) async {
    return placeMarketOrder(call, await request);
  }

  $async.Future<$1.CancelOrderResponse> cancelAllOrders_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.CancelOrdersRequest> request) async {
    return cancelAllOrders(call, await request);
  }

  $async.Future<$1.CancelOrderResponse> cancelOrder_Pre($grpc.ServiceCall call,
      $async.Future<$1.CancelOrderRequest> request) async {
    return cancelOrder(call, await request);
  }

  $async.Future<$1.PlaceOrderResponse> editOrder_Pre($grpc.ServiceCall call,
      $async.Future<$1.EditOrderRequest> request) async {
    return editOrder(call, await request);
  }

  $async.Future<$1.TradesResponse> getTrades_Pre(
      $grpc.ServiceCall call, $async.Future<$1.TradesRequest> request) async {
    return getTrades(call, await request);
  }

  $async.Future<$1.AssetTradesResponse> getAssetTrades_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AssetTradesRequest> request) async {
    return getAssetTrades(call, await request);
  }

  $async.Future<$1.FundsResponse> getFunds_Pre(
      $grpc.ServiceCall call, $async.Future<$1.FundsRequest> request) async {
    return getFunds(call, await request);
  }

  $async.Future<$1.ExplorerLinksResponse> getExplorerLinks_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ExplorerLinksRequest> request) async {
    return getExplorerLinks(call, await request);
  }

  $async.Future<$1.PublicTradesResponse> getPublicTrades_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.PublicTradesRequest> request) async {
    return getPublicTrades(call, await request);
  }

  $async.Future<$1.WatchlistsResponse> getWatchlists_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getWatchlists(call, await request);
  }

  $async.Future<$1.WatchlistResponse> getWatchlist_Pre($grpc.ServiceCall call,
      $async.Future<$1.WatchlistRequest> request) async {
    return getWatchlist(call, await request);
  }

  $async.Future<$1.WatchlistResponse> addWatchlist_Pre($grpc.ServiceCall call,
      $async.Future<$1.AddWatchlistRequest> request) async {
    return addWatchlist(call, await request);
  }

  $async.Future<$1.WatchlistResponse> updateWatchlist_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.UpdateWatchlistRequest> request) async {
    return updateWatchlist(call, await request);
  }

  $async.Future<$1.EmptyResponse> deleteWatchlist_Pre($grpc.ServiceCall call,
      $async.Future<$1.DeleteWatchlistRequest> request) async {
    return deleteWatchlist(call, await request);
  }

  $async.Future<$1.TierInfoResponse> getTierInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getTierInfo(call, await request);
  }

  $async.Future<$1.PersonalDataResponse> getPersonalData_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getPersonalData(call, await request);
  }

  $async.Future<$1.KycDocumentsResponse> getKycDocuments_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getKycDocuments(call, await request);
  }

  $async.Future<$1.EmptyResponse> setAddress_Pre($grpc.ServiceCall call,
      $async.Future<$1.SetAddressRequest> request) async {
    return setAddress(call, await request);
  }

  $async.Future<$1.EmptyResponse> setZip_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SetZipRequest> request) async {
    return setZip(call, await request);
  }

  $async.Future<$1.EmptyResponse> uploadKycFile_Pre(
      $grpc.ServiceCall call, $async.Future<$1.KycFileRequest> request) async {
    return uploadKycFile(call, await request);
  }

  $async.Future<$1.QuestionnaireResponse> getQuestionnaire_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getQuestionnaire(call, await request);
  }

  $async.Future<$1.EmptyResponse> saveQuestionnaire_Pre(
      $grpc.ServiceCall call, $async.Future<$1.AnswersRequest> request) async {
    return saveQuestionnaire(call, await request);
  }

  $async.Future<$1.EmptyResponse> submitProfile_Pre($grpc.ServiceCall call,
      $async.Future<$1.SubmitProfileRequest> request) async {
    return submitProfile(call, await request);
  }

  $async.Future<$1.WalletsResponse> getWallets_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getWallets(call, await request);
  }

  $async.Future<$1.WalletResponse> getWallet_Pre(
      $grpc.ServiceCall call, $async.Future<$1.WalletRequest> request) async {
    return getWallet(call, await request);
  }

  $async.Future<$1.SwiftCredentialsResponse> getSwiftCredentials_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.SwiftCredentialsRequest> request) async {
    return getSwiftCredentials(call, await request);
  }

  $async.Future<$1.EmptyResponse> sendBankTransferRequest_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.BankTransferRequest> request) async {
    return sendBankTransferRequest(call, await request);
  }

  $async.Future<$1.CountryPhoneCodesResponse> getCountryPhoneCodes_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getCountryPhoneCodes(call, await request);
  }

  $async.Future<$1.BankCardPaymentDetailsResponse>
      getBankCardPaymentDetails_Pre(
          $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getBankCardPaymentDetails(call, await request);
  }

  $async.Future<$1.BankCardPaymentUrlResponse> getBankCardPaymentUrl_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.BankCardPaymentUrlRequest> request) async {
    return getBankCardPaymentUrl(call, await request);
  }

  $async.Future<$1.EthereumSettingsResponse> getEthereumSettings_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getEthereumSettings(call, await request);
  }

  $async.Future<$1.CryptoDepositAddressResponse> getCryptoDepositAddress_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.CryptoDepositAddressRequest> request) async {
    return getCryptoDepositAddress(call, await request);
  }

  $async.Future<$1.WithdrawalCryptoInfoResponse> getWithdrawalCryptoInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.WithdrawalCryptoInfoRequest> request) async {
    return getWithdrawalCryptoInfo(call, await request);
  }

  $async.Future<$1.CheckCryptoAddressResponse> isCryptoAddressValid_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.CheckCryptoAddressRequest> request) async {
    return isCryptoAddressValid(call, await request);
  }

  $async.Future<$1.SwiftCashoutInfoResponse> getSwiftCashoutInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getSwiftCashoutInfo(call, await request);
  }

  $async.Future<$1.SwiftCashoutFeeResponse> getSwiftCashoutFee_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.SwiftCashoutFeeRequest> request) async {
    return getSwiftCashoutFee(call, await request);
  }

  $async.Future<$1.SwiftCashoutResponse> swiftCashout_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.SwiftCashoutRequest> request) async {
    return swiftCashout(call, await request);
  }

  $async.Future<$1.EmptyResponse> cryptoCashout_Pre($grpc.ServiceCall call,
      $async.Future<$1.CryptoCashoutRequest> request) async {
    return cryptoCashout(call, await request);
  }

  $async.Future<$1.AppSettingsResponse> getAppSettings_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getAppSettings(call, await request);
  }

  $async.Future<$1.PrivateWalletsResponse> getPrivateWallets_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getPrivateWallets(call, await request);
  }

  $async.Future<$1.AssetDisclaimersResponse> getAssetDisclaimers_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getAssetDisclaimers(call, await request);
  }

  $async.Future<$1.EmptyResponse> approveAssetDisclaimer_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AssetDisclaimerRequest> request) async {
    return approveAssetDisclaimer(call, await request);
  }

  $async.Future<$1.EmptyResponse> declineAssetDisclaimer_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AssetDisclaimerRequest> request) async {
    return declineAssetDisclaimer(call, await request);
  }

  $async.Stream<$1.PriceUpdate> getPriceUpdates_Pre($grpc.ServiceCall call,
      $async.Future<$1.PriceUpdatesRequest> request) async* {
    yield* getPriceUpdates(call, await request);
  }

  $async.Stream<$1.CandleUpdate> getCandleUpdates_Pre($grpc.ServiceCall call,
      $async.Future<$1.CandleUpdatesRequest> request) async* {
    yield* getCandleUpdates(call, await request);
  }

  $async.Stream<$1.Orderbook> getOrderbookUpdates_Pre($grpc.ServiceCall call,
      $async.Future<$1.OrderbookUpdatesRequest> request) async* {
    yield* getOrderbookUpdates(call, await request);
  }

  $async.Stream<$1.PublicTradeUpdate> getPublicTradeUpdates_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.PublicTradesUpdatesRequest> request) async* {
    yield* getPublicTradeUpdates(call, await request);
  }

  $async.Future<$1.AssetsDictionaryResponse> assetsDictionary(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.BaseAssetResponse> getBaseAsset(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.EmptyResponse> setBaseAsset(
      $grpc.ServiceCall call, $1.BaseAssetUpdateRequest request);
  $async.Future<$1.AssetPairsResponse> getAssetPairs(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.PricesResponse> getPrices(
      $grpc.ServiceCall call, $1.PricesRequest request);
  $async.Future<$1.CandlesResponse> getCandles(
      $grpc.ServiceCall call, $1.CandlesRequest request);
  $async.Future<$1.BalancesResponse> getBalances(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.OrderbookResponse> getOrderbook(
      $grpc.ServiceCall call, $1.OrderbookRequest request);
  $async.Future<$1.MarketsResponse> getMarkets(
      $grpc.ServiceCall call, $1.MarketsRequest request);
  $async.Future<$1.PendingActionsResponse> getPendingActions(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.AmountInBaseAssetResponse> getAmountInBaseAsset(
      $grpc.ServiceCall call, $1.AmountInBaseRequest request);
  $async.Future<$1.PushSettingsResponse> getPushSettings(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.EmptyResponse> setPushSettings(
      $grpc.ServiceCall call, $1.PushSettingsRequest request);
  $async.Future<$1.RegisterPushResponse> registerPushNotifications(
      $grpc.ServiceCall call, $1.RegisterPushRequest request);
  $async.Future<$1.VerificationEmailResponse> sendVerificationEmail(
      $grpc.ServiceCall call, $1.VerificationEmailRequest request);
  $async.Future<$1.VerifyResponse> verifyEmail(
      $grpc.ServiceCall call, $1.VerifyEmailRequest request);
  $async.Future<$1.EmptyResponse> sendVerificationSms(
      $grpc.ServiceCall call, $1.VerificationSmsRequest request);
  $async.Future<$1.VerifyResponse> verifyPhone(
      $grpc.ServiceCall call, $1.VerifyPhoneRequest request);
  $async.Future<$1.RegisterResponse> register(
      $grpc.ServiceCall call, $1.RegisterRequest request);
  $async.Future<$1.LoginResponse> login(
      $grpc.ServiceCall call, $1.LoginRequest request);
  $async.Future<$1.EmptyResponse> sendLoginSms(
      $grpc.ServiceCall call, $1.LoginSmsRequest request);
  $async.Future<$1.VerifyLoginSmsResponse> verifyLoginSms(
      $grpc.ServiceCall call, $1.VerifyLoginSmsRequest request);
  $async.Future<$1.CheckPinResponse> checkPin(
      $grpc.ServiceCall call, $1.CheckPinRequest request);
  $async.Future<$1.CheckSessionResponse> isSessionExpired(
      $grpc.ServiceCall call, $1.CheckSessionRequest request);
  $async.Future<$1.EmptyResponse> prolongateSession(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.EmptyResponse> logout(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.LimitOrdersResponse> getOrders(
      $grpc.ServiceCall call, $1.LimitOrdersRequest request);
  $async.Future<$1.PlaceOrderResponse> placeLimitOrder(
      $grpc.ServiceCall call, $1.LimitOrderRequest request);
  $async.Future<$1.PlaceOrderResponse> placeMarketOrder(
      $grpc.ServiceCall call, $1.MarketOrderRequest request);
  $async.Future<$1.CancelOrderResponse> cancelAllOrders(
      $grpc.ServiceCall call, $1.CancelOrdersRequest request);
  $async.Future<$1.CancelOrderResponse> cancelOrder(
      $grpc.ServiceCall call, $1.CancelOrderRequest request);
  $async.Future<$1.PlaceOrderResponse> editOrder(
      $grpc.ServiceCall call, $1.EditOrderRequest request);
  $async.Future<$1.TradesResponse> getTrades(
      $grpc.ServiceCall call, $1.TradesRequest request);
  $async.Future<$1.AssetTradesResponse> getAssetTrades(
      $grpc.ServiceCall call, $1.AssetTradesRequest request);
  $async.Future<$1.FundsResponse> getFunds(
      $grpc.ServiceCall call, $1.FundsRequest request);
  $async.Future<$1.ExplorerLinksResponse> getExplorerLinks(
      $grpc.ServiceCall call, $1.ExplorerLinksRequest request);
  $async.Future<$1.PublicTradesResponse> getPublicTrades(
      $grpc.ServiceCall call, $1.PublicTradesRequest request);
  $async.Future<$1.WatchlistsResponse> getWatchlists(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.WatchlistResponse> getWatchlist(
      $grpc.ServiceCall call, $1.WatchlistRequest request);
  $async.Future<$1.WatchlistResponse> addWatchlist(
      $grpc.ServiceCall call, $1.AddWatchlistRequest request);
  $async.Future<$1.WatchlistResponse> updateWatchlist(
      $grpc.ServiceCall call, $1.UpdateWatchlistRequest request);
  $async.Future<$1.EmptyResponse> deleteWatchlist(
      $grpc.ServiceCall call, $1.DeleteWatchlistRequest request);
  $async.Future<$1.TierInfoResponse> getTierInfo(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.PersonalDataResponse> getPersonalData(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.KycDocumentsResponse> getKycDocuments(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.EmptyResponse> setAddress(
      $grpc.ServiceCall call, $1.SetAddressRequest request);
  $async.Future<$1.EmptyResponse> setZip(
      $grpc.ServiceCall call, $1.SetZipRequest request);
  $async.Future<$1.EmptyResponse> uploadKycFile(
      $grpc.ServiceCall call, $1.KycFileRequest request);
  $async.Future<$1.QuestionnaireResponse> getQuestionnaire(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.EmptyResponse> saveQuestionnaire(
      $grpc.ServiceCall call, $1.AnswersRequest request);
  $async.Future<$1.EmptyResponse> submitProfile(
      $grpc.ServiceCall call, $1.SubmitProfileRequest request);
  $async.Future<$1.WalletsResponse> getWallets(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.WalletResponse> getWallet(
      $grpc.ServiceCall call, $1.WalletRequest request);
  $async.Future<$1.SwiftCredentialsResponse> getSwiftCredentials(
      $grpc.ServiceCall call, $1.SwiftCredentialsRequest request);
  $async.Future<$1.EmptyResponse> sendBankTransferRequest(
      $grpc.ServiceCall call, $1.BankTransferRequest request);
  $async.Future<$1.CountryPhoneCodesResponse> getCountryPhoneCodes(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.BankCardPaymentDetailsResponse> getBankCardPaymentDetails(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.BankCardPaymentUrlResponse> getBankCardPaymentUrl(
      $grpc.ServiceCall call, $1.BankCardPaymentUrlRequest request);
  $async.Future<$1.EthereumSettingsResponse> getEthereumSettings(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.CryptoDepositAddressResponse> getCryptoDepositAddress(
      $grpc.ServiceCall call, $1.CryptoDepositAddressRequest request);
  $async.Future<$1.WithdrawalCryptoInfoResponse> getWithdrawalCryptoInfo(
      $grpc.ServiceCall call, $1.WithdrawalCryptoInfoRequest request);
  $async.Future<$1.CheckCryptoAddressResponse> isCryptoAddressValid(
      $grpc.ServiceCall call, $1.CheckCryptoAddressRequest request);
  $async.Future<$1.SwiftCashoutInfoResponse> getSwiftCashoutInfo(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.SwiftCashoutFeeResponse> getSwiftCashoutFee(
      $grpc.ServiceCall call, $1.SwiftCashoutFeeRequest request);
  $async.Future<$1.SwiftCashoutResponse> swiftCashout(
      $grpc.ServiceCall call, $1.SwiftCashoutRequest request);
  $async.Future<$1.EmptyResponse> cryptoCashout(
      $grpc.ServiceCall call, $1.CryptoCashoutRequest request);
  $async.Future<$1.AppSettingsResponse> getAppSettings(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.PrivateWalletsResponse> getPrivateWallets(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.AssetDisclaimersResponse> getAssetDisclaimers(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.EmptyResponse> approveAssetDisclaimer(
      $grpc.ServiceCall call, $1.AssetDisclaimerRequest request);
  $async.Future<$1.EmptyResponse> declineAssetDisclaimer(
      $grpc.ServiceCall call, $1.AssetDisclaimerRequest request);
  $async.Stream<$1.PriceUpdate> getPriceUpdates(
      $grpc.ServiceCall call, $1.PriceUpdatesRequest request);
  $async.Stream<$1.CandleUpdate> getCandleUpdates(
      $grpc.ServiceCall call, $1.CandleUpdatesRequest request);
  $async.Stream<$1.Orderbook> getOrderbookUpdates(
      $grpc.ServiceCall call, $1.OrderbookUpdatesRequest request);
  $async.Stream<$1.PublicTradeUpdate> getPublicTradeUpdates(
      $grpc.ServiceCall call, $1.PublicTradesUpdatesRequest request);
}