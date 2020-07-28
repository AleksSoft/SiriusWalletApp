import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Formatter {
  static int minDecimal = 2;
  static int maxDecimal = 8;

  static String format(String s,
      {String symbol, String locale, String ifZeroOrNull}) {
    if (!GetUtils.isNullOrBlank(ifZeroOrNull) && GetUtils.isNullOrBlank(s)) {
      return ifZeroOrNull;
    }

    s = GetUtils.isNullOrBlank(s) ? '0.0' : s;
    String formatSymbol = symbol == null ? '' : '$symbol ';
    int decimalDigits = minDecimal;

    var splitted = s.split('.');
    if (splitted == null) print('splitted null');
    if (splitted.length == 2) {
      var length = splitted[1].length;
      if (length > decimalDigits) {
        decimalDigits = length > 8 ? maxDecimal : length;
      }
    }

    return NumberFormat.currency(
            locale: locale ?? 'eu',
            symbol: formatSymbol,
            name: formatSymbol,
            decimalDigits: decimalDigits)
        .format(double.parse(s));
  }
}
