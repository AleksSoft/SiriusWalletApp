import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:antares_wallet/app/presentation/widgets/default_card.dart';
import 'package:antares_wallet/app/presentation/widgets/empty_reloading_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'upgrade_account_quest_controller.dart';

class UpgradeAccountQuestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(title: Text('questionnaire'.tr), centerTitle: true),
      body: GetBuilder<UpgradeAccountQuestController>(
        builder: (_) => EmptyReloadingView(
          isLoading: _.loading,
          child: ListView(
            padding: const EdgeInsets.all(AppSizes.medium),
            shrinkWrap: true,
            children: getListWidgets(_.questionnaire),
          ),
        ),
      ),
    );
  }

  List<Widget> getListWidgets(List<QuestionnaireResponse_Question> list) {
    if (list.isEmpty) return [];
    return list.map((q) {
      if (q.type.toLowerCase() == 'single') {
        return _SingleQuestion(q);
      } else if (q.type.toLowerCase() == 'multiple') {
        return _MultipleQuestion(q);
      } else {
        return _TextQuestion(q);
      }
    }).toList()
      ..add(_SubmitButton());
  }
}

class _SingleQuestion extends GetView<UpgradeAccountQuestController> {
  _SingleQuestion(this.question, {Key key}) : super(key: key);
  final QuestionnaireResponse_Question question;
  @override
  Widget build(BuildContext context) {
    final selectedList = controller.selectedAnswerIds(question.id);
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
            onValueChanged: (index) => controller.updateAnswer(
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

class _MultipleQuestion extends GetView<UpgradeAccountQuestController> {
  _MultipleQuestion(this.question, {Key key}) : super(key: key);
  final QuestionnaireResponse_Question question;
  @override
  Widget build(BuildContext context) {
    final answer =
        controller.answerById(question.id) ?? AnswersRequest_Choice();
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
              onTap: () => controller.selectAnswer(i, answer, question),
              title: Text(question.answers[i].text),
              trailing: Visibility(
                visible: controller.selectedAnswerIds(question.id).contains(i),
                child: Icon(Icons.check, color: AppColors.accent),
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
                  onChanged: (String value) => controller.updateAnswer(
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

class _TextQuestion extends GetView<UpgradeAccountQuestController> {
  _TextQuestion(this.question, {Key key}) : super(key: key);
  final QuestionnaireResponse_Question question;
  @override
  Widget build(BuildContext context) {
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
              onChanged: (String value) => controller.updateAnswer(
                AnswersRequest_Choice()
                  ..questionId = question.id
                  ..other = value,
              ),
              initialValue: controller.answerById(question.id)?.other ?? '',
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

class _SubmitButton extends GetView<UpgradeAccountQuestController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppSizes.medium),
      child: DefaultCard(
        blurRadius: controller.canSubmit ? 10 : 0,
        margin: const EdgeInsets.all(0.0),
        shadowColor: AppColors.accent.withOpacity(0.5),
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.small)),
        child: CupertinoButton.filled(
          disabledColor: Colors.grey.withOpacity(0.7),
          child: Text('submit'.tr),
          onPressed: controller.canSubmit ? controller.saveQuestionnaire : null,
        ),
      ),
    );
  }
}
