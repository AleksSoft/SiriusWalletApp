import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'investment_details_controller.dart';

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
