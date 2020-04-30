import 'package:flutter/material.dart';
import 'package:sirius/ui/shared/ui_helpers.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Splash Screen',
              style: Theme.of(context).textTheme.title,
            ),
            SizedBox(height: UISize.pMedium),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
