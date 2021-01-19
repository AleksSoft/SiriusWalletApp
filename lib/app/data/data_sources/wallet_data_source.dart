import 'package:antares_wallet/app/core/error/error_handler.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:meta/meta.dart';

abstract class IWalletDataSource {
  Future<CheckCryptoAddressResponse> isCryptoAddressValid(
      CheckCryptoAddressRequest r);
  Future<SwiftCredentialsResponse> getSwiftCredentials(
      SwiftCredentialsRequest r);
  Future<SwiftCashoutInfoResponse> getSwiftCashoutInfo();
  Future<SwiftCashoutFeeResponse> getSwiftCashoutFee(SwiftCashoutFeeRequest r);
  Future<BankCardPaymentDetailsResponse> getBankCardPaymentDetails();
  Future<CryptoDepositAddressResponse> getCryptoDepositAddress(
      CryptoDepositAddressRequest r);
  Future<WithdrawalCryptoInfoResponse> getWithdrawalCryptoInfo(
      WithdrawalCryptoInfoRequest r);
  Future<EmptyResponse> sendBankTransferRequest(BankTransferRequest r);
  Future<BankCardPaymentUrlResponse> getBankCardPaymentUrl(
      BankCardPaymentUrlRequest r);
  Future<EmptyResponse> cryptoCashout(CryptoCashoutRequest r);
  Future<SwiftCashoutResponse> swiftCashout(SwiftCashoutRequest r);
}

class WalletDataSource with ErrorHandler implements IWalletDataSource {
  WalletDataSource({@required this.api});
  final ApiService api;

  @override
  Future<CheckCryptoAddressResponse> isCryptoAddressValid(
          CheckCryptoAddressRequest r) =>
      safeCall(
        () => api.clientSecure.isCryptoAddressValid(r),
        method: 'isCryptoAddressValid',
      );

  @override
  Future<SwiftCredentialsResponse> getSwiftCredentials(
          SwiftCredentialsRequest r) =>
      safeCall(
        () => api.clientSecure.getSwiftCredentials(r),
        method: 'getSwiftCredentials',
      );

  @override
  Future<SwiftCashoutInfoResponse> getSwiftCashoutInfo() => safeCall(
        () => api.clientSecure.getSwiftCashoutInfo(Empty()),
        method: 'getSwiftCredentials',
      );

  @override
  Future<SwiftCashoutFeeResponse> getSwiftCashoutFee(
          SwiftCashoutFeeRequest r) =>
      safeCall(
        () => api.clientSecure.getSwiftCashoutFee(r),
        method: 'getSwiftCashoutFee',
      );

  @override
  Future<BankCardPaymentDetailsResponse> getBankCardPaymentDetails() =>
      safeCall(
        () => api.clientSecure.getBankCardPaymentDetails(Empty()),
        method: 'getBankCardPaymentDetails',
      );

  @override
  Future<CryptoDepositAddressResponse> getCryptoDepositAddress(
          CryptoDepositAddressRequest r) =>
      safeCall(
        () => api.clientSecure.getCryptoDepositAddress(r),
        method: 'getCryptoDepositAddress',
      );

  @override
  Future<WithdrawalCryptoInfoResponse> getWithdrawalCryptoInfo(
          WithdrawalCryptoInfoRequest r) =>
      safeCall(
        () => api.clientSecure.getWithdrawalCryptoInfo(r),
        method: 'getWithdrawalCryptoInfo',
      );

  @override
  Future<EmptyResponse> sendBankTransferRequest(BankTransferRequest r) =>
      safeCall(
        () => api.clientSecure.sendBankTransferRequest(r),
        method: 'sendBankTransferRequest',
      );

  @override
  Future<BankCardPaymentUrlResponse> getBankCardPaymentUrl(
          BankCardPaymentUrlRequest r) =>
      safeCall(
        () => api.clientSecure.getBankCardPaymentUrl(r),
        method: 'getBankCardPaymentUrl',
      );

  @override
  Future<EmptyResponse> cryptoCashout(CryptoCashoutRequest r) => safeCall(
        () => api.clientSecure.cryptoCashout(r),
        method: 'cryptoCashout',
      );

  @override
  Future<SwiftCashoutResponse> swiftCashout(SwiftCashoutRequest r) => safeCall(
        () => api.clientSecure.swiftCashout(r),
        method: 'swiftCashout',
      );
}
