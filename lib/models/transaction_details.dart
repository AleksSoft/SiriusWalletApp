import 'package:antares_wallet/models/base_model.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:intl/intl.dart';

import 'asset_dictionary_data.dart';

enum TransactionType { deposit, withdraw }

class TransactionDetails extends BaseModel<TransactionDetails> {
  AssetData asset;
  String type = '';
  String status = '';
  double amount = 0;
  int timestamp = 0;
  int transactionHash;
  List<ExplorerItem> explorerItems = List();
  TransactionType transactionType;

  bool get isDeposit => transactionType == TransactionType.deposit;

  String get dateTime => DateFormat('d.M.y HH:mm:ss').format(
        DateTime.fromMillisecondsSinceEpoch(timestamp),
      );

  @override
  TransactionDetails fromJson(Map<String, dynamic> json) {
    asset = AssetData().fromJson(json['asset']);
    type = json['type'];
    status = json['status'];
    transactionHash = json['transactionHash'];
    amount = json['amount'];
    timestamp = json['timestamp'];
    if (json['explorerItems'] != null) {
      explorerItems = new List<ExplorerItem>();
      json['explorerItems'].forEach((v) {
        explorerItems.add(ExplorerItem().fromJson(v));
      });
    }
    transactionType = EnumToString.fromString(
      TransactionType.values,
      json['transactionType'],
    );
    return this;
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['asset'] = asset;
    data['type'] = type;
    data['status'] = status;
    data['transactionHash'] = transactionHash;
    data['amount'] = amount;
    data['timestamp'] = timestamp;
    data['transactionType'] = EnumToString.parse(transactionType);
    if (this.explorerItems != null) {
      data['explorerItems'] =
          this.explorerItems.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  List<Object> get props => [
        asset,
        type,
        status,
        amount,
        timestamp,
        explorerItems,
        transactionType,
      ];
}

class ExplorerItem extends BaseModel<ExplorerItem> {
  String name = '';
  String url = '';

  @override
  ExplorerItem fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
    return this;
  }

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'url': url,
      };

  @override
  List<Object> get props => [name, url];
}
