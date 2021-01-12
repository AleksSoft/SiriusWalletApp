import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'errors_log_controller.dart';

class ErrorsLogPage extends StatelessWidget {
  const ErrorsLogPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Errors log')),
        body: SafeArea(
          child: GetBuilder<ErrorsLogController>(
            builder: (_) => ListView(
              children: _.savedErrorsModel.errors
                  .map(
                    (e) => Card(
                      child: ListTile(
                        isThreeLine: true,
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Code: ${e.code}'),
                            Text(
                              DateFormat.EEEE().format(
                                DateTime.fromMillisecondsSinceEpoch(
                                  e.timestamp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        subtitle: Text(
                          'Message: ${e.message}\nMethod: ${e.method}',
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ));
  }
}
