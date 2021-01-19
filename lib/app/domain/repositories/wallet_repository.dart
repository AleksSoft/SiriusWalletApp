import 'dart:async';

import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

abstract class IWalletRepository {
  Future<Either<ErrorResponseBody, bool>> isCryptoAddressValid({
    @required String assetId,
    String address,
    String addressExtension,
  });
  Future<Either<ErrorResponseBody, SwiftCredentialsResponse_Body>>
      getSwiftCredentials({@required String assetId});
  Future<Either<ErrorResponseBody, SwiftCashoutInfoResponse_Body>>
      getSwiftCashoutInfo();
  Future<Either<ErrorResponseBody, SwiftCashoutFeeResponse_Body>>
      getSwiftCashoutFee({
    @required String assetId,
    @required String countryCode,
  });
  Future<Either<ErrorResponseBody, BankCardPaymentDetailsResponse_Body>>
      getBankCardPaymentDetails();
  Future<Either<ErrorResponseBody, CryptoDepositAddressResponse_Body>>
      getCryptoDepositAddress({@required String assetId});
  Future<Either<ErrorResponseBody, WithdrawalCryptoInfoResponse_Body>>
      getWithdrawalCryptoInfo({@required String assetId});
  Future<Either<ErrorResponseBody, bool>> sendBankTransferRequest({
    @required String assetId,
    @required double balanceChange,
  });
  Future<Either<ErrorResponseBody, BankCardPaymentUrlResponse_Body>>
      getBankCardPaymentUrl({
    @required String amount,
    @required String assetId,
  });
  Future<Either<ErrorResponseBody, bool>> cryptoCashout({
    @required String assetId,
    @required String volume,
    @required String destinationAddress,
    @required String destinationAddressExtension,
  });
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
  });
}
