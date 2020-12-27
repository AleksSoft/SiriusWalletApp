import 'package:antares_wallet/app/common/translations/en.dart';
import 'package:antares_wallet/app/common/translations/ru.dart';
import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': enUS,
        'ru': ruRU,
      };
}
