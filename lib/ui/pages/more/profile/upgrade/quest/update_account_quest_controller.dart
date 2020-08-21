import 'package:antares_wallet/repositories/profile_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';

class UpgradeAccountQuestController extends GetxController {
  static UpgradeAccountQuestController get con => Get.find();

  final _questionnaire = List<QuestionnaireResponse_Question>().obs;
  List<QuestionnaireResponse_Question> get questionnaire =>
      this._questionnaire.value;
  set questionnaire(List<QuestionnaireResponse_Question> value) =>
      this._questionnaire.value = value;

  @override
  void onInit() async {
    questionnaire = await ProfileRepository.getQuestionnaire();
    super.onInit();
  }
}
