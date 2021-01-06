import 'package:antares_wallet/app/presentation/widgets/empty_reloading_view.dart';
import 'package:antares_wallet/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'local_auth_controller.dart';

class LocalAuthPage extends GetView<LocalAuthController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          leading: Visibility(
            visible: controller.showBack.value,
            child: CloseButton(),
          ),
          title: Obx(() => Text(controller.header)),
        ),
        body: GetX<LocalAuthController>(
          builder: (_) => EmptyReloadingView(
            isLoading: controller.loading.value,
            customLoader: Container(
              color: AppColors.primary.withOpacity(0.8),
              alignment: Alignment.center,
              child: AppUiHelpers.circularProgress,
            ),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Numpad(),
            ),
          ),
        ),
      ),
    );
  }
}

class Numpad extends GetView<LocalAuthController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Obx(
            () => Preview(
              text: controller.pinValue,
              length: controller.fieldsCount,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              NumpadButton(
                text: '1',
                onPressed: () => controller.setValue('1'),
              ),
              NumpadButton(
                text: '2',
                onPressed: () => controller.setValue('2'),
              ),
              NumpadButton(
                text: '3',
                onPressed: () => controller.setValue('2'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              NumpadButton(
                text: '4',
                onPressed: () => controller.setValue('4'),
              ),
              NumpadButton(
                text: '5',
                onPressed: () => controller.setValue('5'),
              ),
              NumpadButton(
                text: '6',
                onPressed: () => controller.setValue('6'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              NumpadButton(
                text: '7',
                onPressed: () => controller.setValue('7'),
              ),
              NumpadButton(
                text: '8',
                onPressed: () => controller.setValue('8'),
              ),
              NumpadButton(
                text: '9',
                onPressed: () => controller.setValue('9'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              NumpadButton(
                haveBorder: false,
                icon: controller.isFingerprint
                    ? Icons.fingerprint
                    : (controller.isFace ? Icons.face_unlock_outlined : null),
                onPressed: controller.showLocalAuth
                    ? () => controller.tryToggleLocalAuth()
                    : null,
              ),
              NumpadButton(
                text: '0',
                onPressed: () => controller.setValue('0'),
              ),
              NumpadButton(
                haveBorder: false,
                icon: Icons.backspace,
                onPressed: () => controller.backspace(),
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
        padding: EdgeInsets.symmetric(vertical: AppSizes.medium),
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
  const NumpadButton({
    Key key,
    this.text,
    this.icon,
    this.haveBorder = true,
    this.onPressed,
  }) : super(key: key);

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

    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSizes.small),
      child: OutlineButton(
        borderSide: haveBorder
            ? BorderSide(color: AppColors.secondary.withOpacity(0.3))
            : BorderSide.none,
        highlightedBorderColor:
            icon != null ? Colors.transparent : AppColors.dark.withOpacity(0.3),
        splashColor:
            icon != null ? Colors.transparent : AppColors.dark.withOpacity(0.1),
        padding: EdgeInsets.all(AppSizes.large),
        shape: CircleBorder(),
        onPressed: onPressed,
        child: label,
      ),
    );
  }
}
