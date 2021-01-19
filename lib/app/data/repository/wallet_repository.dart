import 'package:antares_wallet/app/data/data_sources/wallet_data_source.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:antares_wallet/app/domain/repositories/wallet_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class WalletRepository implements IWalletRepository {
  WalletRepository({@required this.source});
  final IWalletDataSource source;

  @override
  Future<Either<ErrorResponseBody, bool>> isCryptoAddressValid({
    @required String assetId,
    String address,
    String addressExtension,
  }) async {
    final request = CheckCryptoAddressRequest()
      ..assetId = assetId
      ..address = address ?? ''
      ..addressExtension = addressExtension ?? '';

    final response = await source.isCryptoAddressValid(request);

    if (response == null) return Right(false);
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body?.isValid ?? false);
  }

  Future<Either<ErrorResponseBody, SwiftCredentialsResponse_Body>>
      getSwiftCredentials({@required String assetId}) async {
    final request = SwiftCredentialsRequest()..assetId = assetId;

    final response = await source.getSwiftCredentials(request);

    if (response == null) return Right(null);
    return response.hasError() ? Left(response.error) : Right(response?.body);
  }

  Future<Either<ErrorResponseBody, SwiftCashoutInfoResponse_Body>>
      getSwiftCashoutInfo() async {
    final response = await source.getSwiftCashoutInfo();

    if (response == null) return Right(SwiftCashoutInfoResponse_Body());
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body ?? SwiftCashoutInfoResponse_Body());
  }

  Future<Either<ErrorResponseBody, SwiftCashoutFeeResponse_Body>>
      getSwiftCashoutFee({
    @required String assetId,
    @required String countryCode,
  }) async {
    final request = SwiftCashoutFeeRequest()
      ..assetId = assetId
      ..countryCode = countryCode;

    final response = await source.getSwiftCashoutFee(request);

    if (response == null) return Right(SwiftCashoutFeeResponse_Body());
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body ?? SwiftCashoutFeeResponse_Body());
  }

  Future<Either<ErrorResponseBody, BankCardPaymentDetailsResponse_Body>>
      getBankCardPaymentDetails() async {
    final response = await source.getBankCardPaymentDetails();

    if (response == null) return Right(BankCardPaymentDetailsResponse_Body());
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body ?? BankCardPaymentDetailsResponse_Body());
  }

  Future<Either<ErrorResponseBody, CryptoDepositAddressResponse_Body>>
      getCryptoDepositAddress({@required String assetId}) async {
    final request = CryptoDepositAddressRequest()..assetId = assetId;

    final response = await source.getCryptoDepositAddress(request);

    if (response == null) return Right(CryptoDepositAddressResponse_Body());
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body ?? CryptoDepositAddressResponse_Body());
  }

  Future<Either<ErrorResponseBody, WithdrawalCryptoInfoResponse_Body>>
      getWithdrawalCryptoInfo({@required String assetId}) async {
    final request = WithdrawalCryptoInfoRequest()..assetId = assetId;

    final response = await source.getWithdrawalCryptoInfo(request);

    if (response == null) return Right(WithdrawalCryptoInfoResponse_Body());
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body ?? WithdrawalCryptoInfoResponse_Body());
  }

  Future<Either<ErrorResponseBody, bool>> sendBankTransferRequest({
    @required String assetId,
    @required double balanceChange,
  }) async {
    final request = BankTransferRequest()
      ..assetId = assetId
      ..balanceChange = balanceChange;

    final response = await source.sendBankTransferRequest(request);

    if (response == null) return Right(false);
    return response.hasError() ? Left(response.error) : Right(true);
  }

  Future<Either<ErrorResponseBody, BankCardPaymentUrlResponse_Body>>
      getBankCardPaymentUrl({
    @required String amount,
    @required String assetId,
  }) async {
    final request = BankCardPaymentUrlRequest()
      ..amount = amount
      ..assetId = assetId;

    final response = await source.getBankCardPaymentUrl(request);

    if (response == null) return Right(BankCardPaymentUrlResponse_Body());
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body ?? BankCardPaymentUrlResponse_Body());
  }

  Future<Either<ErrorResponseBody, bool>> cryptoCashout({
    @required String assetId,
    @required String volume,
    @required String destinationAddress,
    @required String destinationAddressExtension,
  }) async {
    final request = CryptoCashoutRequest()
      ..assetId = assetId
      ..volume = volume
      ..destinationAddress = destinationAddress
      ..destinationAddressExtension = destinationAddressExtension;

    final response = await source.cryptoCashout(request);

    if (response == null) return Right(false);
    return response.hasError() ? Left(response.error) : Right(true);
  }

  Future<Either<ErrorResponseBody, SwiftCashoutResponse_Body>> swiftCashout({
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
    final request = SwiftCashoutRequest()
      ..amount = amount
      ..asset = asset
      ..bic = bic
      ..accNumber = accNumber
      ..accName = accName
      ..accHolderAddress = accHolderAddress
      ..bankName = bankName
      ..accHolderCountry = accHolderCountry
      ..accHolderZipCode = accHolderZipCode
      ..accHolderCity = accHolderCity;

    final response = await source.swiftCashout(request);

    if (response == null) return Right(SwiftCashoutResponse_Body());
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body ?? SwiftCashoutResponse_Body());
  }
}
