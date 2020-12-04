import 'package:antares_wallet/controllers/investment_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InvestmentDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Page')),
      body: Container(
        child: GetX<InvestmentDetailsController>(
          init: InvestmentDetailsController(),
          builder: (_) => Container(),
        ),
      ),
    );
  }
}
