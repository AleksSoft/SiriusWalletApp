import 'package:antares_wallet/business/models/base_model.dart';

class AssetDictionaryData extends BaseModel<AssetDictionaryData> {
  List<AssetData> assetList = List();
  List<CategoryData> categoryList = List();

  @override
  AssetDictionaryData fromJson(Map<String, dynamic> json) {
    if (json['assetList'] != null) {
      assetList = new List<AssetData>();
      json['assetList'].forEach((v) {
        assetList.add(AssetData().fromJson(v));
      });
    }
    if (json['categoryList'] != null) {
      categoryList = new List<CategoryData>();
      json['categoryList'].forEach((v) {
        categoryList.add(CategoryData().fromJson(v));
      });
    }
    return this;
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.assetList != null) {
      data['assetList'] = this.assetList.map((v) => v.toJson()).toList();
    }
    if (this.categoryList != null) {
      data['categoryList'] = this.categoryList.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  List<Object> get props => [assetList, categoryList];
}

class AssetData extends BaseModel<AssetData> {
  String id;
  String categoryId;
  String displayName;
  String symbol;
  String icon;
  String toBaseInstrumentAssetPairId;
  bool toBaseInstrumentIsMultiply;
  bool canBeBase;
  double accuracy;

  @override
  AssetData fromJson(Map<String, Object> json) {
    id = json['id'];
    categoryId = json['categoryId'];
    displayName = json['displayName'];
    symbol = json['symbol'];
    icon = json['icon'];
    toBaseInstrumentAssetPairId = json['toBaseInstrumentAssetPairId'];
    toBaseInstrumentIsMultiply = json['toBaseInstrumentIsMultiply'];
    canBeBase = json['canBeBase'];
    accuracy = json['accuracy'];
    return this;
  }

  @override
  Map<String, Object> toJson() => {
        'id': id,
        'categoryId': categoryId,
        'displayName': displayName,
        'symbol': symbol,
        'icon': icon,
        'toBaseInstrumentAssetPairId': toBaseInstrumentAssetPairId,
        'toBaseInstrumentIsMultiply': toBaseInstrumentIsMultiply,
        'canBeBase': canBeBase,
        'accuracy': accuracy,
      };

  @override
  List<Object> get props => [
        id,
        categoryId,
        displayName,
        symbol,
        icon,
        toBaseInstrumentAssetPairId,
        toBaseInstrumentIsMultiply,
        canBeBase,
        accuracy,
      ];
}

class CategoryData extends BaseModel<CategoryData> {
  String categoryId;
  String categoryName;
  int sortPriority;

  @override
  CategoryData fromJson(Map<String, Object> json) {
    categoryId = json['fullName'];
    categoryName = json['email'];
    sortPriority = json['contactPhone'];
    return this;
  }

  @override
  Map<String, Object> toJson() => {
        'fullName': categoryId,
        'email': categoryName,
        'contactPhone': sortPriority,
      };

  @override
  List<Object> get props => [categoryId, categoryName, sortPriority];
}
