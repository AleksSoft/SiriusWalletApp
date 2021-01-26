import 'package:antares_wallet/app/core/common/common.dart';
import 'package:decimal/decimal.dart';
import 'package:intl/intl.dart';

class Formatter {
  static const String THOUSAND_SEPARATOR = ',';
  static const String DECIMAL_SEPARATOR = '.';

  static String currency(
    String s, {
    int fractionDigits,
    String prefix,
    String suffix,
    String orElse,
  }) {
    Decimal amount = Decimal.tryParse(s ?? '0.0') ?? Decimal.zero;
    if (amount.toDouble() == 0 && !orElse.nullOrEmpty) return orElse;

    var f = getNumberFormat(fractionDigits, amount.scale);

    String formattedPrefix = prefix == null ? '' : '$prefix ';
    String formattedNumber = f.format(amount.toDouble());
    String formattedSuffix = suffix == null ? '' : ' $suffix';

    return '$formattedPrefix$formattedNumber$formattedSuffix';
  }

  /// generate currency format pattern
  /// accordingly to fraction digits
  /// and current amount of digits
  static NumberFormat getNumberFormat(int fd, int currentFD) {
    String pattern = '###,##0.0';
    int extraZeros = 0;
    int resultFD = 0;

    if (fd == null) {
      resultFD = currentFD;
    } else if (fd > currentFD) {
      extraZeros = fd - currentFD;
      resultFD = currentFD;
    } else {
      resultFD = fd;
    }

    pattern = pattern.padRight(pattern.length - 1 + resultFD + extraZeros, '0');

    return NumberFormat(pattern, "en_US");
  }
}
