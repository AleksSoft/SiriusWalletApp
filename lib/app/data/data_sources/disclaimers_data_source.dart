import 'package:antares_wallet/app/core/error/error_handler.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/google/protobuf/empty.pb.dart';
import 'package:antares_wallet/app/data/services/api/api_service.dart';
import 'package:meta/meta.dart';

abstract class IDisclaimersDataSource {
  Future<AssetDisclaimersResponse> getAssetDisclaimers();
  Future<EmptyResponse> approveAssetDisclaimer(AssetDisclaimerRequest r);
  Future<EmptyResponse> declineAssetDisclaimer(AssetDisclaimerRequest r);
}

class DisclaimersDataSource
    with ErrorHandler
    implements IDisclaimersDataSource {
  DisclaimersDataSource({@required this.api});
  final ApiService api;

  @override
  Future<AssetDisclaimersResponse> getAssetDisclaimers() => safeCall(
        () => api.clientSecure.getAssetDisclaimers(Empty()),
        method: 'getAssetDisclaimers',
      );

  @override
  Future<EmptyResponse> approveAssetDisclaimer(AssetDisclaimerRequest r) =>
      safeCall(
        () => api.clientSecure.approveAssetDisclaimer(r),
        method: 'approveAssetDisclaimer',
      );

  @override
  Future<EmptyResponse> declineAssetDisclaimer(AssetDisclaimerRequest r) =>
      safeCall(
        () => api.clientSecure.declineAssetDisclaimer(r),
        method: 'declineAssetDisclaimer',
      );
}
