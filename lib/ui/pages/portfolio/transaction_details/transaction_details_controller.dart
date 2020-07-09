import 'package:antares_wallet/models/transaction_details.dart';
import 'package:get/get.dart';

class TransactionDetailsController extends GetxController {
  static TransactionDetailsController get con => Get.find();

  final TransactionDetails details = Get.arguments as TransactionDetails;
}
