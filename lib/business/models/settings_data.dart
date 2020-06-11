import 'package:antares_wallet/business/models/asset_dictionary_data.dart';
import 'package:antares_wallet/business/models/base_model.dart';

class SettingsData extends BaseModel<SettingsData> {
  AssetData baseAsset;
  bool pushEnable;
  bool signWithPin;
  String privateKey;

  @override
  SettingsData fromJson(Map<String, dynamic> json) {
    baseAsset = AssetData().fromJson(json['baseAsset']);
    pushEnable = json['pushEnable'];
    signWithPin = json['signWithPin'];
    privateKey = json['privateKey'];
    return this;
  }

  @override
  Map<String, Object> toJson() => {
        'baseAsset': baseAsset.toJson(),
        'pushEnable': pushEnable,
        'signWithPin': signWithPin,
        'privateKey': privateKey,
      };

  @override
  List<Object> get props => [baseAsset, pushEnable, signWithPin, privateKey];
}
