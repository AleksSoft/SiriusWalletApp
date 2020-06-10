import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpgradeAccountQuestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Questionnaire'),
            Text('Step 1 of 3', style: Theme.of(context).textTheme.caption),
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
