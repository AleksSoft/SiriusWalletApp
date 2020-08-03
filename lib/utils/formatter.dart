import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Formatter {
  static const int minDecimal = 2;
  static const int maxDecimalDigits = 8;

  static String currency(
    String s, {
    int maxDecimal,
    String symbol,
    String locale,
    String ifZeroOrNull,
  }) {
    if (GetUtils.isNullOrBlank(s)) {
      if (!GetUtils.isNullOrBlank(ifZeroOrNull)) {
        return ifZeroOrNull;
      } else {
        s = GetUtils.isNullOrBlank(s) ? '0.0' : s;
      }
    } else if (double.parse(s, (_) => 0.0) == 0) {
      if (!GetUtils.isNullOrBlank(ifZeroOrNull)) return ifZeroOrNull;
    }

    String formatSymbol = GetUtils.isNullOrBlank(symbol) ? '' : '$symbol ';
    int decimalDigits = minDecimal;

    var splitted = s.split('.');
    if (splitted.length == 2) {
      var length = splitted[1].length;
      if (length > decimalDigits) {
        if (maxDecimal == null) {
          decimalDigits = length > 8 ? maxDecimalDigits : length;
        } else {
          decimalDigits = maxDecimal;
        }
      }
    }

    return '$formatSymbol${NumberFormat.currency(
      locale: locale ?? 'eu',
      symbol: '',
      decimalDigits: decimalDigits,
    ).format(double.parse(s, (_) => 0.0))}';
  }
}
