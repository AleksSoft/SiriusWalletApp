import 'dart:convert';

import 'package:enum_to_string/enum_to_string.dart';
import 'package:equatable/equatable.dart';
import 'package:sirius/blockchain/blockchain_network_type.dart';
import 'package:sirius/blockchain/blockchain_protocol_code.dart';

class BlockchainWallet extends Equatable {
  final String name;
  final BlockchainNetworkType networkType;
  final BlockchainProtocolCode protocolCode;
  final String address;
  final String publicKey;
  final String privateKey;

  BlockchainWallet(
      {this.name,
      this.networkType,
      this.protocolCode,
      this.address,
      this.publicKey,
      this.privateKey});

  BlockchainWallet.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        address = json['address'],
        networkType = EnumToString.fromString(
            BlockchainNetworkType.values, json['networkType']),
        protocolCode = EnumToString.fromString(
            BlockchainProtocolCode.values, json['protocolCode']),
        publicKey = json['publicKey'],
        privateKey = json['privateKey'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['networkType'] = EnumToString.parse(this.networkType);
    data['protocolCode'] = EnumToString.parse(this.protocolCode);
    data['address'] = this.address;
    data['publicKey'] = this.publicKey;
    data['privateKey'] = this.privateKey;
    return data;
  }

  @override
  String toString() {
    return json.encode(this.toJson());
  }

  @override
  List<Object> get props => [
        name,
        networkType,
        protocolCode,
        address,
        publicKey,
        privateKey,
      ];
}
