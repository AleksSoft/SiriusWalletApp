import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/src/apiservice.pb.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/quest/update_account_quest_controller.dart';
import 'package:antares_wallet/ui/pages/more/profile/upgrade/upgrade_account_result.dart';
import 'package:antares_wallet/ui/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpgradeAccountQuestPage extends StatelessWidget {
  static final String route = '/upgrade-account-quest';
  final c = UpgradeAccountQuestController.con;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0.5,
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('questionnaire'.tr),
          ],
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => ListView(
          padding: const EdgeInsets.all(AppSizes.medium),
          shrinkWrap: true,
          children: c.questionnaire.map((q) {
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
          CupertinoSegmentedControl(
            padding: const EdgeInsets.all(0.0),
            groupValue: 0,
            onValueChanged: (value) {},
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
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: question.answers.length,
            itemBuilder: (_, i) => ListTile(
              visualDensity: VisualDensity.compact,
              title: Text(question.answers[i].text),
              trailing: Icon(
                CupertinoIcons.check_mark,
                color: AppColors.accent,
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
                data: Get.theme.copyWith(
                  primaryColor: AppColors.accent,
                ),
                child: TextField(
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
            child: TextField(
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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppSizes.medium),
      child: DefaultCard(
        blurRadius: 10,
        margin: const EdgeInsets.all(0.0),
        shadowColor: AppColors.accent.withOpacity(0.5),
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.small)),
        child: CupertinoButton.filled(
          disabledColor: Colors.grey.withOpacity(0.7),
          child: Text('submit'.tr),
          onPressed: () => Get.toNamed(UpgradeAccountResultPage.route),
        ),
      ),
    );
  }
}
