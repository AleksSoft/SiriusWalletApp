import 'package:antares_wallet/app/core/common/app_colors.dart';
import 'package:antares_wallet/app/core/error/app_error_handler.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/domain/repositories/profile_repository.dart';
import 'package:antares_wallet/app/presentation/modules/profile/profile_controller.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class UpgradeAccountQuestController extends GetxController
    with AppErrorHandler {
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
    profileRepo
        .getQuestionnaire()
        .then((response) => response.fold(
              defaultError,
              (list) => questionnaire = list,
            ))
        .whenComplete(() => loading = false);
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
    bool canSave = _checkQuestAnswered();
    if (canSave) {
      Get.defaultDialog(
        title: 'Submit',
        middleText: 'Are you sure to submit questionnaire?',
        buttonColor: AppColors.dark,
        confirmTextColor: AppColors.primary,
        cancelTextColor: AppColors.dark,
        onCancel: () => loading = false,
        barrierDismissible: false,
        onConfirm: () {
          Get.back();
          profileCon
              .saveQuestionnaire(answers)
              .whenComplete(() => loading = false);
        },
      );
    } else {
      Get.snackbar(
        'Oops..',
        'Please, answer all questions before submit',
        colorText: AppColors.primary,
        backgroundColor: AppColors.red,
        snackPosition: SnackPosition.TOP,
      );
      loading = false;
    }
  }

  bool _checkQuestAnswered() {
    for (int i = 0; i < questionnaire.length; i++) {
      final q = questionnaire[i];
      int answerIndex = answers.indexWhere((a) => a.questionId == q.id);
      if (q.type.toLowerCase() == 'single') {
        if (answerIndex < 0) {
          answers.add(AnswersRequest_Choice()
            ..questionId = q.id
            ..answerIds.add(q.answers[0].id));
        }
      } else if (answerIndex < 0) return false;
    }
    return true;
  }
}
