import 'package:antares_wallet/services/repositories/settings_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  static SettingsController get con => Get.find();
  final _repository = Get.find<SettingsRepository>();

  List<String> _confirmKeyWords = [];

  List<String> _confirmKeyVariants = [];

  AppSettingsResponse_AppSettingsData get settings => _repository.settings;

  List<String> get confirmKeyWords => _confirmKeyWords;

  List<String> get confirmKeyVariants => _confirmKeyVariants;

  bool get wordsMatch {
    // final words = _repository.settings.privateKey.split(' ');
    // return const ListEquality().equals(
    //   words.sublist(0, _confirmKeyWords.length),
    //   _confirmKeyWords,
    // );
    return true;
  }

  bool get phraseComplete => wordsMatch && _confirmKeyWords.length == 12;

  @override
  void onInit() async {
    super.onInit();
    await _repository.init();
    // refreshConfirmKeyVariants();
    update();
  }

  Future updateBaseAsset() async {
    // final asset = await Get.toNamed(
    //   SelectAssetPage.route,
    //   arguments: SelectAssetArgs(
    //     title: 'select_asset'.tr,
    //     selectedAsset: settings.result,
    //   ),
    // );
    // await _repository.updateBaseAsset(asset);
    // update();
  }

  void refreshConfirmKeyVariants() {
    // _confirmKeyWords.clear();
    // _confirmKeyVariants = _repository.settings.privateKey.split(' ')
    //   ..addAll(_repository.randMnemonicList())
    //   ..shuffle();
  }

  void updateConfirmKeyWords(List<String> updatedWords) {
    // _confirmKeyWords = updatedWords;
    // update();
    // if (!wordsMatch) {
    //   Future.delayed(Duration(milliseconds: 300)).whenComplete(() {
    //     refreshConfirmKeyVariants();
    //     update();
    //   });
    // }
  }

  void backupPrivateKey() {
    // TODO: when API will be ready make all needed logics
    // Get.toNamed(BackUpCopyKeyPage.route);
  }
}
