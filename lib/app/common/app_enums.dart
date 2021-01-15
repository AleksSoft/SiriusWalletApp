enum PinMode { check, create, update }

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
