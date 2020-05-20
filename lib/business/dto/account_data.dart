import 'package:antares_wallet/business/dto/base_dto.dart';

class AccountData extends Dto<AccountData> {
  String level = '';
  String currency = '';
  double depositLimit = 0;
  double currentDeposit = 0;

  double get depositPercent => currentDeposit * 100 / depositLimit / 100;

  bool get hasNoLimit => level.isEmpty || level == 'Beginner';

  @override
  AccountData fromJson(Map<String, Object> json) {
    level = json['level'];
    depositLimit = json['depositLimit'];
    currentDeposit = json['currentDeposit'];
    currency = json['currency'];
    return this;
  }

  @override
  Map<String, Object> toJson() => {
        'level': level,
        'depositLimit': depositLimit,
        'currentDeposit': currentDeposit,
        'currency': currency,
      };

  @override
  List<Object> get props => [level, depositLimit, currentDeposit, currency];
}
