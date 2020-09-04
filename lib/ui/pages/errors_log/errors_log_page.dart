import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'errors_log_controller.dart';

class SavedErrorsPage extends StatelessWidget {
  const SavedErrorsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Errors log'),
        ),
        body: SafeArea(
          child: GetBuilder<ErrorsLogController>(
            init: ErrorsLogController(),
            builder: (_) => ListView(
              children: _.savedErrorsModel.errors
                  .map(
                    (e) => ListTile(
                      isThreeLine: true,
                      title: Text('Code: ${e.code}'),
                      subtitle: Text(
                        'Message: ${e.message}\nMethod: ${e.method}',
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ));
  }
}
