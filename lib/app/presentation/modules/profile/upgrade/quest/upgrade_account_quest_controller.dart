import 'package:antares_wallet/app/core/utils/utils.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/domain/repositories/profile_repository.dart';
import 'package:antares_wallet/app/presentation/modules/profile/profile_controller.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class UpgradeAccountQuestController extends GetxController {
  static UpgradeAccountQuestController get con => Get.find();

  final IProfileRepository profileRepo;
  final ProfileController profileCon;
  UpgradeAccountQuestController({
    @required this.profileRepo,
    @required this.profileCon,
  });

  List<QuestionnaireResponse_Question> questionnaire =
      <QuestionnaireResponse_Question>[];

  List<AnswersRequest_Choice> answers = <AnswersRequest_Choice>[];

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    if (_loading != value) {
      _loading = value;
      update();
    }
  }

  @override
  void onReady() {
    loading = true;
    profileRepo.getQuestionnaire().then((response) => response.fold(
          (error) {
            AppLog.logger.e(error.toProto3Json());
            loading = false;
          },
          (newQuestionnaire) {
            questionnaire = newQuestionnaire;
            loading = false;
          },
        ));
    super.onReady();
  }

  bool get canSubmit =>
      answers != null && answers.isNotEmpty && questionnaire.isNotEmpty;

  void updateAnswer(AnswersRequest_Choice answer) {
    int answerIndex = answers.indexWhere(
      (a) => a.questionId == answer.questionId,
    );
    if (answerIndex >= 0) {
      answers[answerIndex] = answer;
    } else {
      answers.add(answer);
    }
    update();
  }

  void selectAnswer(
    int index,
    AnswersRequest_Choice answer,
    QuestionnaireResponse_Question question,
  ) {
    final selectedList = selectedAnswerIds(question.id);

    answer.questionId = question.id;
    List<String> mergedAnswers = [];
    if (!selectedList.contains(index))
      mergedAnswers.add(question.answers[index].id);
    selectedList.forEach((id) {
      if (id != index) mergedAnswers.add(question.answers[id].id);
    });
    answer.answerIds
      ..clear()
      ..addAll(mergedAnswers);
    answer.other = '';
    updateAnswer(answer);
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
    List<int> resultList = [];
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

  void saveQuestionnaire() {
    loading = true;
    profileCon.saveQuestionnaire(answers).whenComplete(() => loading = false);
  }
}
