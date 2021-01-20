import 'package:antares_wallet/app/data/data_sources/assets_data_source.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/domain/repositories/assets_repository.dart';
import 'package:meta/meta.dart';

class AssetsRepository implements IAssetsRepository {
  AssetsRepository({@required this.source});
  final IAssetsDataSource source;

  @override
  Future<AssetsDictionaryResponse_Body> assetsDictionary() async {
    final response = await source.assetsDictionary();

    return response.body;
  }

  @override
  Future<List<AmountInBaseAssetResponse_AmountInBasePayload>>
      getAmountInBaseAssetList(String baseAssetId) async {
    final response = await source.getAmountInBaseAsset(baseAssetId);
    return response?.body?.values ?? [];
  }

  @override
  Future<String> getBaseAssetId() async {
    final response = await source.getBaseAsset();
    return response?.body?.assetId ?? '';
  }

  @override
  Future<List<AssetPair>> getAssetPairs() async {
    final response = await source.getAssetPairs();
    return response?.body?.assetPairs ?? [];
  }

  @override
  Future<EmptyResponse> setBaseAsset(String id) {
    return source.setBaseAsset(id);
  }
}
