import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/profile_controller.dart';
import 'package:antares_wallet/controllers/upgrade_account_quest_controller.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpgradeAccountQuestPage extends StatelessWidget {
  static final String route = '/upgrade-account-quest';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('questionnaire'.tr),
          ],
        ),
        centerTitle: true,
      ),
      body: GetBuilder<UpgradeAccountQuestController>(
        builder: (_) => ListView(
          padding: const EdgeInsets.all(AppSizes.medium),
          shrinkWrap: true,
          children: _.questionnaire.map((q) {
            if (q.type.toLowerCase() == 'single') {
              return _SingleQuestion(q);
            } else if (q.type.toLowerCase() == 'multiple') {
              return _MultipleQuestion(q);
            } else {
              return _TextQuestion(q);
            }
          }).toList()
            ..add(_SubmitButton()),
        ),
      ),
    );
  }
}

class _SingleQuestion extends StatelessWidget {
  _SingleQuestion(this.question, {Key key}) : super(key: key);
  final QuestionnaireResponse_Question question;
  final c = UpgradeAccountQuestController.con;
  @override
  Widget build(BuildContext context) {
    final selectedList = c.selectedAnswerIds(question.id);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: AppSizes.small),
      padding: const EdgeInsets.all(AppSizes.medium),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.all(
          const Radius.circular(AppSizes.small),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            question.text,
            style: Get.textTheme.subtitle1.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          AppUiHelpers.vSpaceSmall,
          CupertinoSegmentedControl<int>(
            padding: const EdgeInsets.all(0.0),
            groupValue: selectedList.isNotEmpty ? selectedList[0] ?? 0 : 0,
            onValueChanged: (index) => c.updateAnswer(
              AnswersRequest_Choice()
                ..questionId = question.id
                ..answerIds.add(question.answers[index].id),
            ),
            children: {
              0: Text(question.answers[0].text),
              1: Text(question.answers[1].text),
            },
          ),
        ],
      ),
    );
  }
}

class _MultipleQuestion extends StatelessWidget {
  _MultipleQuestion(this.question, {Key key}) : super(key: key);
  final QuestionnaireResponse_Question question;
  final c = UpgradeAccountQuestController.con;
  @override
  Widget build(BuildContext context) {
    final answer = c.answerById(question.id) ?? AnswersRequest_Choice();
    final selectedList = c.selectedAnswerIds(question.id);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: AppSizes.small),
      padding: const EdgeInsets.all(AppSizes.medium),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.all(
          const Radius.circular(AppSizes.small),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            question.text,
            style: Get.textTheme.subtitle1.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: question.answers.length,
            itemBuilder: (_, i) => ListTile(
              visualDensity: VisualDensity.compact,
              contentPadding: const EdgeInsets.all(0.0),
              onTap: () {
                answer.questionId = question.id;
                List<String> mergedAnswers = [];
                if (!selectedList.contains(i))
                  mergedAnswers.add(question.answers[i].id);
                selectedList.forEach((id) {
                  if (id != i) mergedAnswers.add(question.answers[id].id);
                });
                answer.answerIds
                  ..clear()
                  ..addAll(mergedAnswers);
                answer.other = '';
                c.updateAnswer(answer);
              },
              title: Text(question.answers[i].text),
              trailing: Visibility(
                visible: selectedList.contains(i),
                child: Icon(
                  CupertinoIcons.check_mark,
                  color: AppColors.accent,
                ),
              ),
            ),
            separatorBuilder: (_, i) => const Divider(height: 1.0),
          ),
          const Divider(height: 1.0),
          Visibility(
            visible: question.hasOther,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSizes.small,
                AppSizes.small,
                AppSizes.small,
                0.0,
              ),
              child: Theme(
                data: Get.theme.copyWith(primaryColor: AppColors.accent),
                child: TextFormField(
                  onChanged: (String value) => c.updateAnswer(
                    answer
                      ..questionId = question.id
                      ..answerIds.clear()
                      ..other = value,
                  ),
                  initialValue: answer?.other ?? '',
                  decoration: InputDecoration.collapsed(
                    hintText: 'hint_please_specify'.tr,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TextQuestion extends StatelessWidget {
  _TextQuestion(this.question, {Key key}) : super(key: key);
  final QuestionnaireResponse_Question question;
  final c = UpgradeAccountQuestController.con;
  @override
  Widget build(BuildContext context) {
    final answer = c.answerById(question.id);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: AppSizes.small),
      padding: const EdgeInsets.all(AppSizes.medium),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.all(
          const Radius.circular(AppSizes.small),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            question.text,
            style: Get.textTheme.subtitle1.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          AppUiHelpers.vSpaceSmall,
          Divider(height: 1.0),
          AppUiHelpers.vSpaceSmall,
          Theme(
            data: Get.theme.copyWith(
              primaryColor: AppColors.accent,
            ),
            child: TextFormField(
              onChanged: (String value) => c.updateAnswer(
                AnswersRequest_Choice()
                  ..questionId = question.id
                  ..other = value,
              ),
              initialValue: answer?.other ?? '',
              decoration: InputDecoration.collapsed(
                hintText: 'Current question type...',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  _SubmitButton({Key key}) : super(key: key);
  final c = UpgradeAccountQuestController.con;
  @override
  Widget build(BuildContext context) {
    final bool canSubmit = c.canSubmit;
    return Padding(
      padding: const EdgeInsets.only(top: AppSizes.medium),
      child: DefaultCard(
        blurRadius: 10,
        margin: const EdgeInsets.all(0.0),
        shadowColor: canSubmit
            ? AppColors.accent.withOpacity(0.5)
            : AppColors.secondary.withOpacity(0.5),
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.small)),
        child: CupertinoButton.filled(
          disabledColor: Colors.grey.withOpacity(0.7),
          child: Text('submit'.tr),
          onPressed: canSubmit
              ? () => ProfileController.con.saveQuestionnaire(c.answers)
              : null,
        ),
      ),
    );
  }
}
