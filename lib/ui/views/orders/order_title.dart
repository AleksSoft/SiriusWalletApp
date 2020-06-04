import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class OrderTile extends StatelessWidget {
  final bool completed;

  const OrderTile({
    this.completed = false,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.button;
    return Slidable(
      enabled: !completed,
      actionPane: SlidableDrawerActionPane(),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'LKK',
                          style: Theme.of(context).textTheme.button.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.0,
                              ),
                        ),
                        SizedBox(width: 4.0),
                        Text(
                          'SELL',
                          style: Theme.of(context).textTheme.button.copyWith(
                                color: AppColors.red,
                                fontWeight: FontWeight.w700,
                                fontSize: 10.0,
                              ),
                        ),
                        SizedBox(width: 16.0),
                        Text(
                          '0.0037',
                          style: Theme.of(context).textTheme.button.copyWith(
                                fontSize: 16.0,
                              ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      '3.6.2020 17:55:04',
                      style: Theme.of(context).textTheme.caption.copyWith(
                            fontSize: 14.0,
                          ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Price (USD)  ',
                        style: textStyle.copyWith(
                          fontSize: 14.0,
                        ),
                        children: [
                          TextSpan(
                            text: '200.0',
                            style: textStyle.copyWith(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.0),
                    completed
                        ? RichText(
                            text: TextSpan(
                              text: 'Total (USD)  ',
                              style: textStyle.copyWith(
                                fontSize: 14.0,
                              ),
                              children: [
                                TextSpan(
                                  text: '6.4',
                                  style: textStyle.copyWith(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : LinearPercentIndicator(
                            width: 100,
                            lineHeight: 20,
                            percent: 0.7,
                            linearStrokeCap: LinearStrokeCap.butt,
                            padding: EdgeInsets.all(0.0),
                            center: Text(
                              'Filled 70%',
                              style:
                                  Theme.of(context).textTheme.caption.copyWith(
                                        color: AppColors.accent,
                                      ),
                            ),
                            leading: Container(
                              width: 2,
                              height: 20,
                              color: AppColors.accent.withOpacity(0.5),
                            ),
                            trailing: Container(
                              width: 2,
                              height: 20,
                              color: AppColors.accent.withOpacity(0.5),
                            ),
                            backgroundColor: AppColors.accent.withOpacity(0.1),
                            progressColor: AppColors.accent.withOpacity(0.2),
                          ),
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: 1.0,
            color: AppColors.secondary.withOpacity(0.2),
            indent: 16.0,
            endIndent: 16.0,
          ),
        ],
      ),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Edit',
          color: AppColors.accent,
          icon: Icons.edit,
          onTap: () {},
        ),
        IconSlideAction(
          caption: 'Cancel',
          color: AppColors.red,
          icon: Icons.close,
          onTap: () {},
        ),
      ],
    );
  }
}
