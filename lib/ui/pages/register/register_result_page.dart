import 'package:antares_wallet/ui/pages/register/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final c = RegisterController.con;

    return WillPopScope(
      onWillPop: () => c.backResult(),
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints.expand(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Registering...', style: Get.textTheme.headline6),
              CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(
                  Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
