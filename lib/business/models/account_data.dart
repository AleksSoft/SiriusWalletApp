import 'package:antares_wallet/business/models/base_model.dart';
import 'package:enum_to_string/enum_to_string.dart';

enum AccountLevel { beginner, advanced, pro }

class AccountData extends BaseModel<AccountData> {
  AccountLevel level;
  String currency = '';
  double depositLimit = 0;
  double currentDeposit = 0;

  double get depositPercent => currentDeposit * 100 / depositLimit / 100;

  bool get hasNoLimit => level == null || level == AccountLevel.beginner;

  String get levelStr {
    if (level == null) return 'Beginner';
    switch (level) {
      case AccountLevel.pro:
        return 'Pro Individual';
      case AccountLevel.advanced:
        return 'Advanced';
      case AccountLevel.beginner:
      default:
        return 'Beginner';
    }
  }

  @override
  AccountData fromJson(Map<String, Object> json) {
    level = EnumToString.fromString(AccountLevel.values, json['level']);
    depositLimit = json['depositLimit'];
    currentDeposit = json['currentDeposit'];
    currency = json['currency'];
    return this;
  }

  @override
  Map<String, Object> toJson() => {
        'level': EnumToString.parse(level),
        'depositLimit': depositLimit,
        'currentDeposit': currentDeposit,
        'currency': currency,
      };

  @override
  List<Object> get props => [level, depositLimit, currentDeposit, currency];
}
