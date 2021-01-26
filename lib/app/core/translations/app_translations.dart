import 'package:get/get.dart';

import 'locales/en.dart';
import 'locales/ru.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': enUS,
        'ru': ruRU,
      };
}
