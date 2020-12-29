import 'package:antares_wallet/app/common/common.dart';
import 'package:antares_wallet/controllers/login_controller.dart';
import 'package:antares_wallet/ui/pages/dev_settings/dev_settings_page.dart';
import 'package:antares_wallet/ui/pages/login/login_page.dart';
import 'package:antares_wallet/ui/pages/register/register_page.dart';
import 'package:antares_wallet/ui/widgets/empty_reloading_view.dart';
import 'package:antares_wallet/ui/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetX<LoginController>(
          builder: (_) => EmptyReloadingView(
            customLoader: Container(
              alignment: Alignment.center,
              color: AppColors.scaffoldBkg,
              child: AppUiHelpers.circularProgress,
            ),
            isLoading: _.loading,
            child: _StartPageContent(),
          ),
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
          flex: 70,
          child: _StartPager(this.pageViewController),
        ),
        Flexible(
          flex: 5,
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
          flex: 25,
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          RaisedGradientButton(
            onPressed: () => Get.toNamed(RegisterPage.route),
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
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: AppSizes.small,
              top: AppSizes.small,
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
          InkWell(
            onTap: () => Get.toNamed(LoginPage.route),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppSizes.small,
              ),
              child: Text(
                "SIGN IN",
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.secondary),
              ),
            ),
          ),
          Visibility(
            visible: !Get.find<AppConfig>().isProd,
            child: InkWell(
              onTap: () => Get.to(DevSettingsPage()),
              child: Text(
                'Developer settings',
                textAlign: TextAlign.center,
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
            Flexible(
              flex: 5,
              child: Image.asset(
                'assets/images/onboarding/$imageName.png',
                alignment: Alignment.topCenter,
                fit: BoxFit.fitHeight,
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(title, style: TextStyle(fontSize: 18)),
                  AppUiHelpers.vSpaceMedium,
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
