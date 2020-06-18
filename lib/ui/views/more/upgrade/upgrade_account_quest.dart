import 'package:antares_wallet/app/routers/router.gr.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/widgets/default_card.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class UpgradeAccountQuestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('questionnaire'.tr()),
            Text(
              'step_n_of_n'.tr(args: ['1', '3']),
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16.0),
        shrinkWrap: true,
        children: [
          _Quest1(),
          SizedBox(height: 8.0),
          DefaultCard(
            blurRadius: 10,
            margin: const EdgeInsets.all(0.0),
            shadowColor: AppColors.accent.withOpacity(0.5),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            child: CupertinoButton.filled(
              disabledColor: Colors.grey.withOpacity(0.7),
              child: Text('submit'.tr()),
              onPressed: () => ExtendedNavigator.ofRouter<Router>().pushNamed(
                Routes.upgradeAccountResultRoute,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Quest1 extends StatefulWidget {
  @override
  _Quest1State createState() => _Quest1State();
}

class _Quest1State extends State<_Quest1> {
  String _currentSelectedValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildBinaryQuestion('1. Binary-type question?'),
        _buildCheckQuestion('2. Check-type question?'),
        _buildTextQuestion('3. Text-type question?'),
        _buildCheckQuestion(
          '4. Check-type question with text field?',
          withText: true,
        ),
        _buildSelectQuestion('5. Select-type question?'),
      ],
    );
  }

  Widget _buildBinaryQuestion(String question) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.all(const Radius.circular(8.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                question,
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(height: 8.0),
              CupertinoSegmentedControl(
                padding: const EdgeInsets.all(0.0),
                groupValue: 0,
                onValueChanged: (value) {},
                children: {
                  0: Text('yes'.tr()),
                  1: Text('no'.tr()),
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCheckQuestion(String question, {bool withText = false}) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.all(const Radius.circular(8.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                question,
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(height: 8.0),
              Divider(height: 1.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Variant 1'),
                    Spacer(),
//                    Icon(CupertinoIcons.check_mark, color: AppColors.accent),
                  ],
                ),
              ),
              Divider(height: 1.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Variant 2'),
                    Spacer(),
//                    Icon(CupertinoIcons.check_mark, color: AppColors.accent),
                  ],
                ),
              ),
              Divider(height: 1.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Variant 3'),
                    Spacer(),
                    Icon(CupertinoIcons.check_mark, color: AppColors.accent),
                  ],
                ),
              ),
              Divider(height: 1.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Variant 4'),
                    Spacer(),
//                    Icon(CupertinoIcons.check_mark, color: AppColors.accent),
                  ],
                ),
              ),
              Divider(height: 1.0),
              Visibility(
                visible: withText,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'hint_please_specify'.tr(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTextQuestion(String question) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.all(const Radius.circular(8.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                question,
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(height: 8.0),
              Divider(height: 1.0),
              SizedBox(height: 8.0),
              TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Current question type...',
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSelectQuestion(String question) {
    var _items = [
      "item 1",
      "item 2",
      "item 3",
      "item 4",
      "item 5",
      "item 6",
    ];
    return Builder(
      builder: (BuildContext context) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.all(const Radius.circular(8.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                question,
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(height: 8.0),
              Divider(height: 1.0),
              SizedBox(height: 8.0),
              FormField<String>(
                builder: (FormFieldState<String> state) {
                  return InputDecorator(
                    decoration: InputDecoration.collapsed(
                      hintText: 'hint_please_select'.tr(),
                    ),
                    isEmpty: _currentSelectedValue == null ||
                        _currentSelectedValue == '',
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _currentSelectedValue,
                        isDense: true,
                        onChanged: (String newValue) {
                          setState(() {
                            _currentSelectedValue = newValue;
                            state.didChange(newValue);
                          });
                        },
                        items: _items.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
