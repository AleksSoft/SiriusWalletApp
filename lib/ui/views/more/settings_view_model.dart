import 'package:antares_wallet/models/asset_dictionary_data.dart';
import 'package:antares_wallet/models/settings_data.dart';
import 'package:antares_wallet/app/locator.dart';
import 'package:antares_wallet/services/repositories/settings_repository.dart';
import 'package:antares_wallet/src/generated/isalive.pb.dart';
import 'package:collection/collection.dart';
import 'package:stacked/stacked.dart';

class SettingsViewModel extends BaseViewModel {
  final _repository = locator<SettingsRepository>();

  List<String> _confirmKeyWords = [];

  List<String> _confirmKeyVariants = [];

  SettingsData get settings => _repository.settings;

  IsAliveResponce get isAliveResponce => _repository.isAliveResponce;

  List<String> get confirmKeyWords => _confirmKeyWords;

  List<String> get confirmKeyVariants => _confirmKeyVariants;

  bool get wordsMatch {
    final words = _repository.settings.privateKey.split(' ');
    return const ListEquality().equals(
      words.sublist(0, _confirmKeyWords.length),
      _confirmKeyWords,
    );
  }

  bool get phraseComplete => wordsMatch && _confirmKeyWords.length == 12;

  void initialise() {
    _repository.loadSettings();
    _repository.fetchAlive();
    notifyListeners();
  }

  void updateBaseAsset(AssetData assetData) {
    runBusyFuture(_repository.updateBaseAsset(assetData));
  }

  void refreshConfirmKeyVariants() {
    _confirmKeyWords.clear();
    _confirmKeyVariants = _repository.settings.privateKey.split(' ')
      ..addAll(_repository.randMnemonicList())
      ..shuffle();
  }

  void updateConfirmKeyWords(List<String> updatedWords) {
    _confirmKeyWords = updatedWords;
    notifyListeners();
    if (!wordsMatch) {
      Future.delayed(Duration(milliseconds: 300)).whenComplete(() {
        refreshConfirmKeyVariants();
        notifyListeners();
      });
    }
  }
}