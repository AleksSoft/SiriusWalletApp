enum PinMode { check_initial, check, create, update }

enum LocalAuthState { checkPIN, createPIN, updatePIN }

enum LocalAuthType { face, fingerprint, none }

enum Environment { dev, test, prod }

enum OrdersPeriod { all, day, week, custom }

enum OrdersTransactionType { all, buy, sell }

enum DocType {
  passport,
  nationalId,
  drivingLicense,
  selfie,
  proofOfAddress,
  proofOfFunds,
}

enum AssetInfoPeriod { h24, week, month, year }

enum PairSortType {
  name_top,
  name_bottom,
  vol_top,
  vol_bottom,
  price_top,
  price_bottom,
  change_top,
  change_bottom,
  none,
}

enum WithdrawalMode { swift, blockchain }
