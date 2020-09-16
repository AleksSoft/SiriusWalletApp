import 'package:antares_wallet/controllers/errors_log_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

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
