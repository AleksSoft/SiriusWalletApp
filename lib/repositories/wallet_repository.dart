import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/src/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/utils/error_handler.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class WalletRepository {
  static final _api = Get.find<ApiService>();

  static Future<SwiftCredentialsResponse_SwiftCredentials> getSwiftCredentials(
      String assetId) async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.getSwiftCredentials(
        SwiftCredentialsRequest()..assetId = assetId,
      ),
    );
    return response?.result ?? SwiftCredentialsResponse_SwiftCredentials();
  }

  static Future<SwiftCashoutFeeResponse_SwiftCashoutFee> getSwiftCashoutFee({
    @required String assetId,
    @required String countryCode,
  }) async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.getSwiftCashoutFee(
        SwiftCashoutFeeRequest()
          ..assetId = assetId
          ..countryCode = countryCode,
      ),
    );
    return response?.result ?? SwiftCashoutFeeResponse_SwiftCashoutFee();
  }

  static Future<BankCardPaymentDetailsResponse_BankCardPaymentDetails>
      getBankCardPaymentDetails() async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.getBankCardPaymentDetails(Empty()),
    );
    return response?.result ??
        BankCardPaymentDetailsResponse_BankCardPaymentDetails();
  }

  static Future<CryptoDepositAddressResponse_CryptoDepositAddress>
      getCryptoDepositAddress(String assetId) async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.getCryptoDepositAddress(
        CryptoDepositAddressRequest()..assetId = assetId,
      ),
    );
    return response?.address ??
        CryptoDepositAddressResponse_CryptoDepositAddress();
  }

  static Future<WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo>
      getWithdrawalCryptoInfo(String assetId) async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.getWithdrawalCryptoInfo(
        WithdrawalCryptoInfoRequest()..assetId = assetId,
      ),
    );
    return response?.withdrawalInfo ??
        WithdrawalCryptoInfoResponse_WithdrawalCryptoInfo();
  }

  static Future<bool> sendBankTransferRequest({
    @required String assetId,
    @required double balanceChange,
  }) async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.sendBankTransferRequest(
        BankTransferRequest()
          ..assetId = assetId
          ..balanceChange = balanceChange,
      ),
    );
    return response != null;
  }

  static Future<BankCardPaymentUrlResponse_BankCardPaymentUrl>
      getBankCardPaymentUrl({
    @required String address,
    @required String amount,
    @required String assetId,
    @required String city,
    @required String country,
    @required String email,
    @required String firstName,
    @required String lastName,
    @required String phone,
    @required String zip,
    @required String depositOption,
  }) async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.getBankCardPaymentUrl(
        BankCardPaymentUrlRequest()
          ..address = address
          ..amount = amount
          ..assetId = assetId
          ..city = city
          ..country = country
          ..email = email
          ..firstName = firstName
          ..lastName = lastName
          ..phone = phone
          ..zip = zip
          ..depositOption = depositOption,
      ),
    );
    return response?.result ?? BankCardPaymentUrlResponse_BankCardPaymentUrl();
  }

  static Future<bool> cryptoCashout({
    @required String assetId,
    @required String volume,
    @required String destinationAddress,
    @required String destinationAddressExtension,
  }) async {
    final response = await ErrorHandler.safeCall(
      () => _api.clientSecure.cryptoCashout(
        CryptoCashoutRequest()
          ..assetId = assetId
          ..volume = volume
          ..destinationAddress = destinationAddress
          ..destinationAddressExtension = destinationAddressExtension,
      ),
    );
    return response != null;
  }
}
