import 'package:antares_wallet/app/data/data_sources/settings_data_source.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:antares_wallet/app/domain/repositories/settings_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

class SettingsRepository implements ISettingsRepository {
  SettingsRepository({@required this.source});
  final ISettingsDataSource source;

  Future<Either<ErrorResponseBody, AppSettingsResponse_Body>>
      getAppSettings() async {
    final response = await source.getAppSettings();

    if (response == null) return Right(AppSettingsResponse_Body());
    return response.hasError()
        ? Left(response.error)
        : Right(response?.body ?? AppSettingsResponse_Body());
  }
}
