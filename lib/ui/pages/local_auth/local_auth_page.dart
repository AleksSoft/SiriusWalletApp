import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'local_auth_controller.dart';

class LocalAuthPage extends StatelessWidget {
  static const String route = '/local-auth';
  final c = LocalAuthController.con;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Visibility(
              visible: c.showBack,
              child: Positioned(
                top: AppSizes.medium,
                left: AppSizes.medium,
                child: CloseButton(),
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Obx(() => Text(c.header, style: Get.textTheme.headline6)),
                  AppUiHelpers.vSpaceExtraLarge,
                  Numpad(),
                ],
              ),
            ),
            Obx(
              () => AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: c.loading
                    ? Container(
                        color: AppColors.primary.withOpacity(0.9),
                        alignment: Alignment.center,
                        child: CircularProgressIndicator(
                          valueColor: new AlwaysStoppedAnimation<Color>(
                            Colors.black,
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Numpad extends StatelessWidget {
  final c = LocalAuthController.con;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        children: <Widget>[
          Obx(() => Preview(text: c.pinValue, length: c.fieldsCount)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              NumpadButton(
                text: '1',
                onPressed: () => c.setValue('1'),
              ),
              NumpadButton(
                text: '2',
                onPressed: () => c.setValue('2'),
              ),
              NumpadButton(
                text: '3',
                onPressed: () => c.setValue('2'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              NumpadButton(
                text: '4',
                onPressed: () => c.setValue('4'),
              ),
              NumpadButton(
                text: '5',
                onPressed: () => c.setValue('5'),
              ),
              NumpadButton(
                text: '6',
                onPressed: () => c.setValue('6'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              NumpadButton(
                text: '7',
                onPressed: () => c.setValue('7'),
              ),
              NumpadButton(
                text: '8',
                onPressed: () => c.setValue('8'),
              ),
              NumpadButton(
                text: '9',
                onPressed: () => c.setValue('9'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              NumpadButton(
                haveBorder: false,
                icon: c.showLocalAuth ? FontAwesomeIcons.fingerprint : null,
                onPressed: c.showLocalAuth ? () => c.toggleLocalAuth() : null,
              ),
              NumpadButton(
                text: '0',
                onPressed: () => c.setValue('0'),
              ),
              NumpadButton(
                haveBorder: false,
                icon: Icons.backspace,
                onPressed: () => c.backspace(),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Preview extends StatelessWidget {
  final int length;
  final String text;
  const Preview({Key key, this.length, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> previewLength = [];
    for (var i = 0; i < length; i++) {
      previewLength.add(Dot(isActive: text.length >= i + 1));
    }
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Wrap(children: previewLength));
  }
}

class Dot extends StatelessWidget {
  final bool isActive;
  const Dot({Key key, this.isActive = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: 15.0,
        height: 15.0,
        decoration: BoxDecoration(
          color: isActive ? AppColors.dark : Colors.transparent,
          border: Border.all(width: 1.0, color: AppColors.dark),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}

class NumpadButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool haveBorder;
  final Function onPressed;
  const NumpadButton(
      {Key key, this.text, this.icon, this.haveBorder = true, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle buttonStyle = TextStyle(fontSize: 22.0, color: AppColors.dark);
    Widget label = icon != null
        ? Icon(
            icon,
            color: AppColors.dark.withOpacity(0.8),
            size: 35.0,
          )
        : Text(this.text ?? '', style: buttonStyle);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: OutlineButton(
        borderSide: haveBorder
            ? BorderSide(color: AppColors.secondary.withOpacity(0.3))
            : BorderSide.none,
        highlightedBorderColor:
            icon != null ? Colors.transparent : AppColors.dark.withOpacity(0.3),
        splashColor:
            icon != null ? Colors.transparent : AppColors.dark.withOpacity(0.1),
        padding: EdgeInsets.all(20.0),
        shape: CircleBorder(),
        onPressed: onPressed,
        child: label,
      ),
    );
  }
}
