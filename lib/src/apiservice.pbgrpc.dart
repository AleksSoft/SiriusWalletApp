///
//  Generated code. Do not modify.
//  source: apiservice.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

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
      $grpc.ClientMethod<$1.DeleteWatchlistRequest, $1.DeleteWatchlistResponse>(
          '/antaresWallet.ApiService/DeleteWatchlist',
          ($1.DeleteWatchlistRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DeleteWatchlistResponse.fromBuffer(value));
  static final _$getTierInfo = $grpc.ClientMethod<$0.Empty, $1.TierInfoRespone>(
      '/antaresWallet.ApiService/GetTierInfo',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.TierInfoRespone.fromBuffer(value));
  static final _$getWallets = $grpc.ClientMethod<$0.Empty, $1.WalletsResponse>(
      '/antaresWallet.ApiService/GetWallets',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.WalletsResponse.fromBuffer(value));
  static final _$getWallet =
      $grpc.ClientMethod<$1.WalletRequest, $1.WalletResponse>(
          '/antaresWallet.ApiService/GetWallet',
          ($1.WalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.WalletResponse.fromBuffer(value));
  static final _$generateWallet =
      $grpc.ClientMethod<$1.GenerateWalletRequest, $1.GenerateWalletResponse>(
          '/antaresWallet.ApiService/GenerateWallet',
          ($1.GenerateWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GenerateWalletResponse.fromBuffer(value));
  static final _$generateWalletV2 =
      $grpc.ClientMethod<$1.GenerateWalletV2Request, $1.EmptyResponseV2>(
          '/antaresWallet.ApiService/GenerateWalletV2',
          ($1.GenerateWalletV2Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.EmptyResponseV2.fromBuffer(value));
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
  static final _$getOffchainChannelKey = $grpc.ClientMethod<
          $1.OffchainChannelKeyRequest, $1.OffchainChannelKeyResponse>(
      '/antaresWallet.ApiService/GetOffchainChannelKey',
      ($1.OffchainChannelKeyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.OffchainChannelKeyResponse.fromBuffer(value));
  static final _$swiftCashout =
      $grpc.ClientMethod<$1.SwiftCashoutRequest, $1.SwiftCashoutResponse>(
          '/antaresWallet.ApiService/SwiftCashout',
          ($1.SwiftCashoutRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.SwiftCashoutResponse.fromBuffer(value));
  static final _$finalizeSwiftCashout = $grpc.ClientMethod<
          $1.SwiftCashoutFinalizeRequest, $1.SwiftCashoutFinalizeResponse>(
      '/antaresWallet.ApiService/FinalizeSwiftCashout',
      ($1.SwiftCashoutFinalizeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.SwiftCashoutFinalizeResponse.fromBuffer(value));
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

  ApiServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.AssetsDictionaryResponse> assetsDictionary(
      $0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$assetsDictionary, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.BaseAssetResponse> getBaseAsset($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getBaseAsset, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.PricesResponse> getPrices($1.PricesRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getPrices, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.CandlesResponse> getCandles($1.CandlesRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getCandles, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.BalancesResponse> getBalances($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getBalances, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.LimitOrdersResponse> getOrders(
      $1.LimitOrdersRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getOrders, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.PlaceOrderResponse> placeLimitOrder(
      $1.LimitOrderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$placeLimitOrder, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.PlaceOrderResponse> placeMarketOrder(
      $1.MarketOrderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$placeMarketOrder, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.CancelOrderResponse> cancelAllOrders(
      $1.CancelOrdersRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$cancelAllOrders, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.CancelOrderResponse> cancelOrder(
      $1.CancelOrderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$cancelOrder, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.WatchlistsResponse> getWatchlists($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getWatchlists, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.WatchlistResponse> getWatchlist(
      $1.WatchlistRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getWatchlist, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.WatchlistResponse> addWatchlist(
      $1.AddWatchlistRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$addWatchlist, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.WatchlistResponse> updateWatchlist(
      $1.UpdateWatchlistRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateWatchlist, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.DeleteWatchlistResponse> deleteWatchlist(
      $1.DeleteWatchlistRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteWatchlist, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.TierInfoRespone> getTierInfo($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getTierInfo, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.WalletsResponse> getWallets($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getWallets, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.WalletResponse> getWallet($1.WalletRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getWallet, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.GenerateWalletResponse> generateWallet(
      $1.GenerateWalletRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$generateWallet, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.EmptyResponseV2> generateWalletV2(
      $1.GenerateWalletV2Request request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$generateWalletV2, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.SwiftCredentialsResponse> getSwiftCredentials(
      $1.SwiftCredentialsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getSwiftCredentials, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.EmptyResponse> sendBankTransferRequest(
      $1.BankTransferRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sendBankTransferRequest, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.CountryPhoneCodesResponse> getCountryPhoneCodes(
      $0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getCountryPhoneCodes, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.BankCardPaymentDetailsResponse>
      getBankCardPaymentDetails($0.Empty request, {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getBankCardPaymentDetails, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.BankCardPaymentUrlResponse> getBankCardPaymentUrl(
      $1.BankCardPaymentUrlRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getBankCardPaymentUrl, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.EthereumSettingsResponse> getEthereumSettings(
      $0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getEthereumSettings, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.CryptoDepositAddressResponse> getCryptoDepositAddress(
      $1.CryptoDepositAddressRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getCryptoDepositAddress, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.WithdrawalCryptoInfoResponse> getWithdrawalCryptoInfo(
      $1.WithdrawalCryptoInfoRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getWithdrawalCryptoInfo, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.SwiftCashoutInfoResponse> getSwiftCashoutInfo(
      $0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getSwiftCashoutInfo, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.SwiftCashoutFeeResponse> getSwiftCashoutFee(
      $1.SwiftCashoutFeeRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getSwiftCashoutFee, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.OffchainChannelKeyResponse> getOffchainChannelKey(
      $1.OffchainChannelKeyRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getOffchainChannelKey, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.SwiftCashoutResponse> swiftCashout(
      $1.SwiftCashoutRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$swiftCashout, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.SwiftCashoutFinalizeResponse> finalizeSwiftCashout(
      $1.SwiftCashoutFinalizeRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$finalizeSwiftCashout, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.EmptyResponse> cryptoCashout(
      $1.CryptoCashoutRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$cryptoCashout, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.AppSettingsResponse> getAppSettings($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getAppSettings, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.PrivateWalletsResponse> getPrivateWallets(
      $0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getPrivateWallets, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$1.PriceUpdate> getPriceUpdates(
      $1.PriceUpdatesRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getPriceUpdates, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseStream<$1.CandleUpdate> getCandleUpdates(
      $1.CandleUpdatesRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getCandleUpdates, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
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
    $addMethod($grpc.ServiceMethod<$1.DeleteWatchlistRequest,
            $1.DeleteWatchlistResponse>(
        'DeleteWatchlist',
        deleteWatchlist_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.DeleteWatchlistRequest.fromBuffer(value),
        ($1.DeleteWatchlistResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.TierInfoRespone>(
        'GetTierInfo',
        getTierInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.TierInfoRespone value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$1.GenerateWalletRequest,
            $1.GenerateWalletResponse>(
        'GenerateWallet',
        generateWallet_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GenerateWalletRequest.fromBuffer(value),
        ($1.GenerateWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.GenerateWalletV2Request, $1.EmptyResponseV2>(
            'GenerateWalletV2',
            generateWalletV2_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.GenerateWalletV2Request.fromBuffer(value),
            ($1.EmptyResponseV2 value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$1.OffchainChannelKeyRequest,
            $1.OffchainChannelKeyResponse>(
        'GetOffchainChannelKey',
        getOffchainChannelKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.OffchainChannelKeyRequest.fromBuffer(value),
        ($1.OffchainChannelKeyResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.SwiftCashoutRequest, $1.SwiftCashoutResponse>(
            'SwiftCashout',
            swiftCashout_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.SwiftCashoutRequest.fromBuffer(value),
            ($1.SwiftCashoutResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SwiftCashoutFinalizeRequest,
            $1.SwiftCashoutFinalizeResponse>(
        'FinalizeSwiftCashout',
        finalizeSwiftCashout_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.SwiftCashoutFinalizeRequest.fromBuffer(value),
        ($1.SwiftCashoutFinalizeResponse value) => value.writeToBuffer()));
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
  }

  $async.Future<$1.AssetsDictionaryResponse> assetsDictionary_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return assetsDictionary(call, await request);
  }

  $async.Future<$1.BaseAssetResponse> getBaseAsset_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getBaseAsset(call, await request);
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

  $async.Future<$1.DeleteWatchlistResponse> deleteWatchlist_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.DeleteWatchlistRequest> request) async {
    return deleteWatchlist(call, await request);
  }

  $async.Future<$1.TierInfoRespone> getTierInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getTierInfo(call, await request);
  }

  $async.Future<$1.WalletsResponse> getWallets_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getWallets(call, await request);
  }

  $async.Future<$1.WalletResponse> getWallet_Pre(
      $grpc.ServiceCall call, $async.Future<$1.WalletRequest> request) async {
    return getWallet(call, await request);
  }

  $async.Future<$1.GenerateWalletResponse> generateWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GenerateWalletRequest> request) async {
    return generateWallet(call, await request);
  }

  $async.Future<$1.EmptyResponseV2> generateWalletV2_Pre($grpc.ServiceCall call,
      $async.Future<$1.GenerateWalletV2Request> request) async {
    return generateWalletV2(call, await request);
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

  $async.Future<$1.SwiftCashoutInfoResponse> getSwiftCashoutInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getSwiftCashoutInfo(call, await request);
  }

  $async.Future<$1.SwiftCashoutFeeResponse> getSwiftCashoutFee_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.SwiftCashoutFeeRequest> request) async {
    return getSwiftCashoutFee(call, await request);
  }

  $async.Future<$1.OffchainChannelKeyResponse> getOffchainChannelKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.OffchainChannelKeyRequest> request) async {
    return getOffchainChannelKey(call, await request);
  }

  $async.Future<$1.SwiftCashoutResponse> swiftCashout_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.SwiftCashoutRequest> request) async {
    return swiftCashout(call, await request);
  }

  $async.Future<$1.SwiftCashoutFinalizeResponse> finalizeSwiftCashout_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.SwiftCashoutFinalizeRequest> request) async {
    return finalizeSwiftCashout(call, await request);
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

  $async.Stream<$1.PriceUpdate> getPriceUpdates_Pre($grpc.ServiceCall call,
      $async.Future<$1.PriceUpdatesRequest> request) async* {
    yield* getPriceUpdates(call, await request);
  }

  $async.Stream<$1.CandleUpdate> getCandleUpdates_Pre($grpc.ServiceCall call,
      $async.Future<$1.CandleUpdatesRequest> request) async* {
    yield* getCandleUpdates(call, await request);
  }

  $async.Future<$1.AssetsDictionaryResponse> assetsDictionary(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.BaseAssetResponse> getBaseAsset(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.PricesResponse> getPrices(
      $grpc.ServiceCall call, $1.PricesRequest request);
  $async.Future<$1.CandlesResponse> getCandles(
      $grpc.ServiceCall call, $1.CandlesRequest request);
  $async.Future<$1.BalancesResponse> getBalances(
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
  $async.Future<$1.WatchlistsResponse> getWatchlists(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.WatchlistResponse> getWatchlist(
      $grpc.ServiceCall call, $1.WatchlistRequest request);
  $async.Future<$1.WatchlistResponse> addWatchlist(
      $grpc.ServiceCall call, $1.AddWatchlistRequest request);
  $async.Future<$1.WatchlistResponse> updateWatchlist(
      $grpc.ServiceCall call, $1.UpdateWatchlistRequest request);
  $async.Future<$1.DeleteWatchlistResponse> deleteWatchlist(
      $grpc.ServiceCall call, $1.DeleteWatchlistRequest request);
  $async.Future<$1.TierInfoRespone> getTierInfo(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.WalletsResponse> getWallets(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.WalletResponse> getWallet(
      $grpc.ServiceCall call, $1.WalletRequest request);
  $async.Future<$1.GenerateWalletResponse> generateWallet(
      $grpc.ServiceCall call, $1.GenerateWalletRequest request);
  $async.Future<$1.EmptyResponseV2> generateWalletV2(
      $grpc.ServiceCall call, $1.GenerateWalletV2Request request);
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
  $async.Future<$1.SwiftCashoutInfoResponse> getSwiftCashoutInfo(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.SwiftCashoutFeeResponse> getSwiftCashoutFee(
      $grpc.ServiceCall call, $1.SwiftCashoutFeeRequest request);
  $async.Future<$1.OffchainChannelKeyResponse> getOffchainChannelKey(
      $grpc.ServiceCall call, $1.OffchainChannelKeyRequest request);
  $async.Future<$1.SwiftCashoutResponse> swiftCashout(
      $grpc.ServiceCall call, $1.SwiftCashoutRequest request);
  $async.Future<$1.SwiftCashoutFinalizeResponse> finalizeSwiftCashout(
      $grpc.ServiceCall call, $1.SwiftCashoutFinalizeRequest request);
  $async.Future<$1.EmptyResponse> cryptoCashout(
      $grpc.ServiceCall call, $1.CryptoCashoutRequest request);
  $async.Future<$1.AppSettingsResponse> getAppSettings(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.PrivateWalletsResponse> getPrivateWallets(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$1.PriceUpdate> getPriceUpdates(
      $grpc.ServiceCall call, $1.PriceUpdatesRequest request);
  $async.Stream<$1.CandleUpdate> getCandleUpdates(
      $grpc.ServiceCall call, $1.CandleUpdatesRequest request);
}
