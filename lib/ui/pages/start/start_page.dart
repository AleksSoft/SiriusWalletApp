import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:antares_wallet/app/ui/app_sizes.dart';
import 'package:antares_wallet/app/ui/app_ui_helpers.dart';
import 'package:antares_wallet/controllers/login_controller.dart';
import 'package:antares_wallet/services/api/api_service.dart';
import 'package:antares_wallet/ui/pages/errors_log/errors_log_page.dart';
import 'package:antares_wallet/ui/pages/login/login_page.dart';
import 'package:antares_wallet/ui/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartPage extends StatelessWidget {
  static final String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetX<LoginController>(
          builder: (_) {
            return Stack(
              children: [
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: _.loading
                      ? Center(child: AppUiHelpers.circularProgress)
                      : _StartPageContent(),
                ),
                Visibility(
                  visible: !_.loading,
                  child: Positioned(
                    top: AppSizes.small,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        DropdownButton<String>(
                          value: _.currentBaseUrl,
                          focusColor: AppColors.accent,
                          onChanged: (String s) async =>
                              await _.setCurrentBaseUrl(s),
                          items: ApiService.urls.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        FlatButton(
                          onPressed: () => Get.to(
                            SavedErrorsPage(),
                            fullscreenDialog: true,
                          ),
                          child: Text('Errors log'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _StartPageContent extends StatelessWidget {
  final PageController pageViewController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          flex: 7,
          child: _StartPager(this.pageViewController),
        ),
        Flexible(
          flex: 1,
          child: Center(
            child: SmoothPageIndicator(
              controller: this.pageViewController,
              count: 6,
              effect: WormEffect(
                dotHeight: AppSizes.small,
                dotWidth: AppSizes.small,
                dotColor: AppColors.secondary.withOpacity(0.4),
                activeDotColor: Colors.purpleAccent,
              ),
              onDotClicked: (index) =>
                  this.pageViewController.jumpToPage(index),
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: _StartFooter(),
        ),
      ],
    );
  }
}

class _StartFooter extends StatelessWidget {
  final style = Get.textTheme.headline6;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.large,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RaisedGradientButton(
            onPressed: () => LoginController.con.openRegister(),
            gradient: LinearGradient(
              colors: <Color>[
                Colors.yellowAccent,
                Colors.orangeAccent,
                Colors.red,
                Colors.redAccent,
                Colors.purpleAccent,
                Colors.purple,
              ],
            ),
            child: Text(
              "REGISTER",
              textAlign: TextAlign.center,
              style: style.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: AppSizes.small,
              top: AppSizes.medium,
              left: AppSizes.small,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    color: AppColors.dark,
                    height: 1,
                    endIndent: AppSizes.medium,
                  ),
                ),
                Text('or'),
                Expanded(
                  child: Divider(
                    color: AppColors.dark,
                    height: 1,
                    indent: AppSizes.medium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
            child: FlatButton(
              onPressed: () => Get.toNamed(LoginPage.route),
              child: Text(
                "SIGN IN",
                textAlign: TextAlign.center,
                style: style.copyWith(
                  color: AppColors.secondary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StartPager extends StatelessWidget {
  const _StartPager(this.pageViewController, {Key key}) : super(key: key);
  final PageController pageViewController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: this.pageViewController,
      children: [
        _buidPage(
          title: 'WELCOME TO LYKKE',
          subtitle: 'Your gateway to the world of digital assets.',
          imageName: 'welcome',
        ),
        _buidPage(
          title: 'DEPOSIT SECURELY',
          subtitle:
              'Safety deposit bitcoins and other digital assets to your wallet.',
          imageName: 'deposit',
        ),
        _buidPage(
          title: 'TRADE FREELY',
          subtitle:
              'Buy and sell bitcoin, ethereum and other digital assets with 0% commission',
          imageName: 'trade',
        ),
        _buidPage(
          title: 'SETTLE IMMEDIATELY',
          subtitle:
              'Receive settlement of yours transactions in minutes instead of days.',
          imageName: 'settle',
        ),
        _buidPage(
          title: 'WITHDRAW SAFELY',
          subtitle: 'Request immediate withdrawal to your crypto wallet.',
          imageName: 'withdraw',
        ),
        _buidPage(
          title: 'START EASILY',
          subtitle:
              'All you need is a selfie, photo ID and proof of address and you are ready to go!',
          imageName: 'start',
        ),
      ],
    );
  }

  Widget _buidPage({
    @required String title,
    @required String subtitle,
    @required String imageName,
  }) =>
      Padding(
        padding: const EdgeInsets.all(AppSizes.medium),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/onboarding/$imageName.png'),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(title, style: Get.textTheme.headline5),
                AppUiHelpers.vSpaceMedium,
                Text(
                  subtitle,
                  style: Get.textTheme.button,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      );
}
