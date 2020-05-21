import 'package:antares_wallet/business/dto/portfolio_history_item.dart';
import 'package:antares_wallet/business/view_models/portfolio/portfolio_history_view_model.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/views/widgets/nothing_view.dart';
import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PortfolioHistoryView extends StatelessWidget {
  const PortfolioHistoryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => PortfolioHistoryViewModel(),
      onModelReady: (PortfolioHistoryViewModel model) async {
        await model.initialise();
      },
      builder: (context, PortfolioHistoryViewModel model, child) {
        if (model.isBusy) {
          return Center(child: CircularProgressIndicator());
        }
        if (model.historyItems.isEmpty) {
          return Center(
            child: NothingView(
              header: 'No history yet',
              message: 'Your history will appear here.',
            ),
          );
        }
        return RefreshIndicator(
          onRefresh: () async => await model.updateHistory(),
          child: ListView.builder(
            itemCount: model.historyItems.length,
            padding: EdgeInsets.all(8.0),
            itemBuilder: (context, index) {
              return PortfolioHistoryCard(index: index);
            },
          ),
        );
      },
    );
  }
}

class PortfolioHistoryCard extends ViewModelWidget<PortfolioHistoryViewModel> {
  final int index;
  const PortfolioHistoryCard({
    Key key,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, PortfolioHistoryViewModel model) {
    final PortfolioHistoryItem item = model.historyItems[index];

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 5.0,
      shadowColor: Colors.black38,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      item.asset,
                      style: Theme.of(context).textTheme.button.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0,
                          ),
                    ),
                    SizedBox(width: 4.0),
                    Text(
                      item.isDeposit ? 'DEPOSIT' : 'WITHDRAW',
                      style: Theme.of(context).textTheme.button.copyWith(
                            color: item.isDeposit ? Colors.green : Colors.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 10.0,
                          ),
                    ),
                  ],
                ),
                Text(
                  item.dateTime,
                  style: Theme.of(context).textTheme.caption.copyWith(
                        fontSize: 14.0,
                      ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildInfoItem(context, 'Amount', '${item.amount}'),
                  VerticalDivider(),
                  _buildInfoItem(context, 'Type', item.type),
                  VerticalDivider(),
                  _buildInfoItem(context, 'Status', item.status),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                item.explorerItems.isNotEmpty
                    ? FlatButton(
                        onPressed: () {},
                        child: Text(
                          'View Explorer',
                          style: Theme.of(context).textTheme.button.copyWith(
                                color: AppColors.accent,
                              ),
                        ),
                      )
                    : SizedBox.shrink(),
                item.transactionHash != null
                    ? FlatButton(
                        onPressed: () {
                          ClipboardManager.copyToClipBoard(
                                  item.transactionHash.toString())
                              .then((result) {
                            final snackBar = SnackBar(
                              content: Text(
                                'Transaction hash copied to Clipboard',
                              ),
                            );
                            Scaffold.of(context).showSnackBar(snackBar);
                          });
                        },
                        child: Text(
                          'Copy',
                          style: Theme.of(context).textTheme.button.copyWith(
                                color: AppColors.accent,
                              ),
                        ),
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem(BuildContext context, String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text(
          value,
          style: Theme.of(context).textTheme.button.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 16.0,
              ),
        ),
        Text(title, style: Theme.of(context).textTheme.caption),
      ],
    );
  }
}
