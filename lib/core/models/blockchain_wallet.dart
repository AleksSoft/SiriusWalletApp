import 'dart:convert';

class BlockchainWallet {
  String name;
  String blockchain;
  String address;
  String publicKey;
  String privateKey;

  BlockchainWallet(
      {this.name,
      this.blockchain,
      this.address,
      this.publicKey,
      this.privateKey});

  BlockchainWallet.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    blockchain = json['blockchain'];
    address = json['address'];
    publicKey = json['publicKey'];
    privateKey = json['privateKey'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['blockchain'] = this.blockchain;
    data['address'] = this.address;
    data['publicKey'] = this.publicKey;
    data['privateKey'] = this.privateKey;
    return data;
  }

  @override
  String toString() {
    return json.encode(this.toJson());
  }
}
