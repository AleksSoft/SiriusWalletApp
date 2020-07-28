import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';

class TransactionDetailsController extends GetxController {
  static TransactionDetailsController get con => Get.find();

  final FundsResponse_FundsModel details =
      Get.arguments as FundsResponse_FundsModel;
}
