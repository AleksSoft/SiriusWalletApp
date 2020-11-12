import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/services/utils/error_handler.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class WalletRepository {
  static final _api = Get.find<ApiService>();

  static Future<bool> isCryptoAddressValid({
    @required String assetId,
    String address,
    String addressExtension,
  }) async {
    final response = await ErrorHandler.safeCall<CheckCryptoAddressResponse>(
      () => _api.clientSecure.isCryptoAddressValid(
        CheckCryptoAddressRequest()
          ..assetId = assetId
          ..address = address ?? ''
          ..addressExtension = addressExtension ?? '',
      ),
      method: 'isCryptoAddressValid',
    );
    return response?.result?.isValid ?? false;
  }

  static Future<SwiftCredentialsResponse_SwiftCredentials> getSwiftCredentials(
      String assetId) async {
    final response = await ErrorHandler.safeCall<SwiftCredentialsResponse>(
      () => _api.clientSecure.getSwiftCredentials(
        SwiftCredentialsRequest()..assetId = assetId,
      ),
      method: 'getSwiftCredentials',
    );
    return response?.result;
  }

  static Future<SwiftCashoutInfoResponse_SwiftCashoutInfo>
      getSwiftCashoutInfo() async {
    final response = await ErrorHandler.safeCall<SwiftCashoutInfoResponse>(
      () => _api.clientSecure.getSwiftCashoutInfo(Empty()),
      method: 'getSwiftCashoutInfo',
    );
    return response?.result ?? SwiftCashoutInfoResponse_SwiftCashoutInfo();
  }

  static Future<SwiftCashoutFeeResponse_SwiftCashoutFee> getSwiftCashoutFee({
    @required String assetId,
    @required String countryCode,
  }) async {
    final response = await ErrorHandler.safeCall<SwiftCashoutFeeResponse>(
      () => _api.clientSecure.getSwiftCashoutFee(
        SwiftCashoutFeeRequest()
          ..assetId = assetId
          ..countryCode = countryCode,
      ),
      method: 'getSwiftCashoutFee',
    );
    return response?.result ?? SwiftCashoutFeeResponse_SwiftCashoutFee();
  }

  static Future<BankCardPaymentDetailsResponse_BankCardPaymentDetails>
      getBankCardPaymentDetails() async {
    final response =
        await ErrorHandler.safeCall<BankCardPaymentDetailsResponse>(
      () => _api.clientSecure.getBankCardPaymentDetails(Empty()),
      method: 'getBankCardPaymentDetails',
    );
    return response?.result ??
        BankCardPaymentDetailsResponse_BankCardPaymentDetails();
  }

  static Future<CryptoDepositAddressResponse_CryptoDepositAddress>
      getCryptoDepositAddress(String assetId) async {
    final response = await ErrorHandler.safeCall<CryptoDepositAddressResponse>(
      () => _api.clientSecure.getCryptoDepositAddress(
        CryptoDepositAddressRequest()..assetId = assetId,
      ),
      method: 'getCryptoDepositAddress',
    );
    return response?.address ??
        CryptoDepositAddressResponse_CryptoDepositAddress();
  }

  static Future<WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo>
      getWithdrawalCryptoInfo(String assetId) async {
    final response = await ErrorHandler.safeCall<WithdrawalCryptoInfoResponse>(
      () => _api.clientSecure.getWithdrawalCryptoInfo(
        WithdrawalCryptoInfoRequest()..assetId = assetId,
      ),
      method: 'getWithdrawalCryptoInfo',
    );
    return response?.withdrawalInfo ??
        WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo();
  }

  static Future<bool> sendBankTransferRequest({
    @required String assetId,
    @required double balanceChange,
  }) async {
    final response = await ErrorHandler.safeCall<EmptyResponse>(
      () => _api.clientSecure.sendBankTransferRequest(
        BankTransferRequest()
          ..assetId = assetId
          ..balanceChange = balanceChange,
      ),
      method: 'sendBankTransferRequest',
    );
    return response != null;
  }

  static Future<BankCardPaymentUrlResponse_BankCardPaymentUrl>
      getBankCardPaymentUrl({
    @required String amount,
    @required String assetId,
  }) async {
    final response = await ErrorHandler.safeCall<BankCardPaymentUrlResponse>(
      () => _api.clientSecure.getBankCardPaymentUrl(
        BankCardPaymentUrlRequest()
          ..amount = amount
          ..assetId = assetId,
      ),
      method: 'getBankCardPaymentUrl',
    );
    return response?.result ?? BankCardPaymentUrlResponse_BankCardPaymentUrl();
  }

  static Future<bool> cryptoCashout({
    @required String assetId,
    @required String volume,
    @required String destinationAddress,
    @required String destinationAddressExtension,
  }) async {
    final response = await ErrorHandler.safeCall<EmptyResponse>(
      () => _api.clientSecure.cryptoCashout(
        CryptoCashoutRequest()
          ..assetId = assetId
          ..volume = volume
          ..destinationAddress = destinationAddress
          ..destinationAddressExtension = destinationAddressExtension,
      ),
      method: 'cryptoCashout',
    );
    return response != null;
  }

  static Future<SwiftCashoutResponse_SwiftCashoutData> swiftCashout({
    @required String amount,
    @required String asset,
    @required String bic,
    @required String accNumber,
    @required String accName,
    @required String accHolderAddress,
    @required String bankName,
    @required String accHolderCountry,
    @required String accHolderZipCode,
    @required String accHolderCity,
  }) async {
    final response = await ErrorHandler.safeCall<SwiftCashoutResponse>(
      () => _api.clientSecure.swiftCashout(
        SwiftCashoutRequest()
          ..amount = amount
          ..asset = asset
          ..bic = bic
          ..accNumber = accNumber
          ..accName = accName
          ..accHolderAddress = accHolderAddress
          ..bankName = bankName
          ..accHolderCountry = accHolderCountry
          ..accHolderZipCode = accHolderZipCode
          ..accHolderCity = accHolderCity,
      ),
      method: 'swiftCashout',
    );
    return response?.result ?? SwiftCashoutResponse_SwiftCashoutData();
  }
}
