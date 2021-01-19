import 'dart:async';

import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/timestamp.pb.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

abstract class IPortfolioRepository {
  Future<Either<ErrorResponseBody, List<Balance>>> getBalances();
  Future<Either<ErrorResponseBody, List<FundsResponse_FundsModel>>> getFunds({
    @required int take,
    @required int skip,
    String assetId,
    Timestamp fromDate,
    Timestamp toDate,
  });
  Future<
      Either<ErrorResponseBody,
          List<ExplorerLinksResponse_ExplorerLinkModel>>> getExplorerLinks({
    @required String assetId,
    @required String transactionHash,
  });
}
