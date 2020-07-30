import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Formatter {
  static int minDecimal = 2;
  static int maxDecimal = 8;

  static String format(String s,
      {String symbol, String locale, String ifZeroOrNull}) {
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
        decimalDigits = length > 8 ? maxDecimal : length;
      }
    }

    return '$formatSymbol${NumberFormat.currency(
      locale: locale ?? 'eu',
      symbol: '',
      decimalDigits: decimalDigits,
    ).format(double.parse(s, (_) => 0.0))}';
  }
}
