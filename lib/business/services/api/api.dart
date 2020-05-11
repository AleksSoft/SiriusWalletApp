import 'package:sirius/business/services/models/support.dart';

class Api {
  static Future<SupportData> fetchSupportData() async {
    await Future.delayed(Duration(milliseconds: 300));
    return SupportData();
  }
}
