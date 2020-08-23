import 'package:antares_wallet/repositories/profile_repository.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:get/get.dart';

import '../upgrade_account_result.dart';

class UpgradeAccountQuestController extends GetxController {
  static UpgradeAccountQuestController get con => Get.find();

  List<QuestionnaireResponse_Question> questionnaire =
      <QuestionnaireResponse_Question>[];

  List<AnswersRequest_Choice> answers = <AnswersRequest_Choice>[];

  @override
  void onInit() async {
    super.onInit();
    questionnaire = await ProfileRepository.getQuestionnaire();
    update();
  }

  bool get canSubmit =>
      answers.length == questionnaire.length && answers.length > 0;

  void updateAnswer(AnswersRequest_Choice answer) {
    int answerIndex = answers.indexWhere(
      (a) => a.questionId == answer.questionId,
    );
    if (answerIndex >= 0) {
      answers[answerIndex] = answer;
    } else {
      answers.add(answer);
    }
    print(answers);
    update();
  }

  AnswersRequest_Choice answerById(String questionId) => answers.firstWhere(
        (a) => a.questionId == questionId,
        orElse: () => null,
      );

  List<int> selectedAnswerIds(String questionId) {
    var question = questionnaire.firstWhere(
      (q) => q.id == questionId,
      orElse: () => null,
    );
    List<int> resultList = List();
    if (question != null) {
      var answer = answerById(questionId);
      if (answer != null) {
        answer.answerIds.forEach((aId) {
          int index = question.answers.indexWhere((a) => a.id == aId);
          if (index >= 0) resultList.add(index);
        });
      }
    }
    return resultList;
  }
}
