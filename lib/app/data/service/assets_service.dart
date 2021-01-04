import 'package:antares_wallet/app/data/provider/assets_provider.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:meta/meta.dart';

abstract class IAssetsService {}

class AssetsService extends GetxService implements IAssetsService {
  AssetsService({
    @required this.provider,
    @required this.storage,
  });
  final IAssetsProvider provider;
  final GetStorage storage;
}
