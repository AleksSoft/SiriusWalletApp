class Validators {
//  static final RegExp _nameRegExp = RegExp(
//    r'^[a-z0-9_-]{3,15}$',
//  );

  static isValidName(String name) {
    return name != null && name.length > 3;
  }

  static isValidBlockchainStr(String blockchainStr) {
    return blockchainStr != null && blockchainStr.isNotEmpty;
  }
}
