import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportController extends GetxController {
  static SupportController get con => Get.find();

  String get shortHelpCenterUrl => 'lykkex.zendesk.com';

  String get supportEmail => 'support@lykke.com';

  String get supportPhone => '+41 43 508 63 79';

  void openHelpCenter() => launch('http://$shortHelpCenterUrl');

  void mailToSupport() => launch('mailto:$supportEmail');

  void callSupport() => launch("tel:+41435086379");
}
