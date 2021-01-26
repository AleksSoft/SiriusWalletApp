import 'package:antares_wallet/app/core/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Registering...', style: Get.textTheme.headline6),
            AppUiHelpers.circularProgress,
          ],
        ),
      ),
    );
  }
}
