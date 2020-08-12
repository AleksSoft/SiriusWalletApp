import 'package:antares_wallet/repositories/settings_repository.dart';
import 'package:antares_wallet/services/blockchain_service.dart';
import 'package:get/get.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingsRepository>(() => SettingsRepository());
    Get.lazyPut<BlockchainService>(() => BlockchainService());
  }
}
