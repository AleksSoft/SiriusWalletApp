import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/app/services/api/api_service.dart';
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
    return response?.body?.isValid ?? false;
  }

  static Future<SwiftCredentialsResponse_Body> getSwiftCredentials(
      String assetId) async {
    final response = await ErrorHandler.safeCall<SwiftCredentialsResponse>(
      () => _api.clientSecure.getSwiftCredentials(
        SwiftCredentialsRequest()..assetId = assetId,
      ),
      method: 'getSwiftCredentials',
    );
    return response?.body;
  }

  static Future<SwiftCashoutInfoResponse_Body> getSwiftCashoutInfo() async {
    final response = await ErrorHandler.safeCall<SwiftCashoutInfoResponse>(
      () => _api.clientSecure.getSwiftCashoutInfo(Empty()),
      method: 'getSwiftCashoutInfo',
    );
    return response?.body ?? SwiftCashoutInfoResponse_Body();
  }

  static Future<SwiftCashoutFeeResponse_Body> getSwiftCashoutFee({
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
    return response?.body ?? SwiftCashoutFeeResponse_Body();
  }

  static Future<BankCardPaymentDetailsResponse_Body>
      getBankCardPaymentDetails() async {
    final response =
        await ErrorHandler.safeCall<BankCardPaymentDetailsResponse>(
      () => _api.clientSecure.getBankCardPaymentDetails(Empty()),
      method: 'getBankCardPaymentDetails',
    );
    return response?.body ?? BankCardPaymentDetailsResponse_Body();
  }

  static Future<CryptoDepositAddressResponse_Body> getCryptoDepositAddress(
      String assetId) async {
    final response = await ErrorHandler.safeCall<CryptoDepositAddressResponse>(
      () => _api.clientSecure.getCryptoDepositAddress(
        CryptoDepositAddressRequest()..assetId = assetId,
      ),
      method: 'getCryptoDepositAddress',
    );
    return response?.body ?? CryptoDepositAddressResponse_Body();
  }

  static Future<WithdrawalCryptoInfoResponse_Body> getWithdrawalCryptoInfo(
      String assetId) async {
    final response = await ErrorHandler.safeCall<WithdrawalCryptoInfoResponse>(
      () => _api.clientSecure.getWithdrawalCryptoInfo(
        WithdrawalCryptoInfoRequest()..assetId = assetId,
      ),
      method: 'getWithdrawalCryptoInfo',
    );
    return response?.body ?? WithdrawalCryptoInfoResponse_Body();
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

  static Future<BankCardPaymentUrlResponse_Body> getBankCardPaymentUrl({
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
    return response?.body ?? BankCardPaymentUrlResponse_Body();
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

  static Future<SwiftCashoutResponse_Body> swiftCashout({
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
    return response?.body ?? SwiftCashoutResponse_Body();
  }
}
