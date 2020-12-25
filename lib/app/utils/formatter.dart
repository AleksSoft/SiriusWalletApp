import 'package:decimal/decimal.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:get/utils.dart';

class Formatter {
  static String currency(
    String s, {
    int fractionDigits,
    String prefix,
    String suffix,
    String orElse,
  }) {
    Decimal amount = Decimal.tryParse(s ?? '0.0') ?? Decimal.zero;
    if (amount.toDouble() == 0 && !orElse.isBlank) return orElse;
    int currentFDLength = amount.scale;

    String formattedPrefix = prefix == null ? '' : '$prefix ';
    String formattedSuffix = suffix == null ? '' : ' $suffix';

    var fmf = FlutterMoneyFormatter(amount: amount.toDouble());

    int extraZerosCount = 0;
    int resultFD = 0;
    if (fractionDigits == null) {
      resultFD = currentFDLength;
    } else if (fractionDigits > currentFDLength) {
      extraZerosCount = fractionDigits - currentFDLength;
      resultFD = currentFDLength;
    } else {
      resultFD = fractionDigits;
    }

    fmf = fmf.copyWith(fractionDigits: resultFD);

    String extraZeros = '';
    for (int i = 0; i < extraZerosCount - 1; i++) extraZeros += '0';

    String nonDigits = fmf.output.withoutFractionDigits.isEmpty
        ? '0'
        : fmf.output.withoutFractionDigits;

    return '$formattedPrefix$nonDigits,${fmf.output.fractionDigitsOnly}$extraZeros$formattedSuffix';
  }
}
