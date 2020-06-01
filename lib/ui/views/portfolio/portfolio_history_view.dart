import 'package:antares_wallet/business/dto/portfolio_history_item.dart';
import 'package:antares_wallet/business/view_models/portfolio/portfolio_history_view_model.dart';
import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/views/portfolio/portfolio_history_filters_view.dart';
import 'package:antares_wallet/ui/views/widgets/default_card.dart';
import 'package:antares_wallet/ui/views/widgets/nothing_view.dart';
import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioHistoryView extends StatelessWidget {
  final PanelController _panelController = PanelController();

  PortfolioHistoryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => PortfolioHistoryViewModel(
        onCloseFilter: () => _panelController.close(),
        onOpenFilter: () => _panelController.open(),
      ),
      disposeViewModel: false,
      onModelReady: (PortfolioHistoryViewModel model) async {
        await model.initialise();
      },
      builder: (context, PortfolioHistoryViewModel model, child) {
        if (model.isBusy) {
          return Center(child: CircularProgressIndicator());
        }
        if (model.itemsEmpty) {
          return Center(
            child: NothingView(
              header: 'No history yet',
              message: 'Your history will appear here.',
            ),
          );
        }
        return Scaffold(
          body: Stack(
            children: [
              RefreshIndicator(
                displacement: 20.0,
                onRefresh: () async => await model.updateHistory(),
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: model.historyItems.length,
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  itemBuilder: (context, index) {
                    return PortfolioHistoryCard(index: index);
                  },
                ),
              ),
              SlidingUpPanel(
                panel: PortfolioHistoryFiltersView(),
                controller: _panelController,
                minHeight: 0,
                maxHeight: 350,
                backdropEnabled: true,
                onPanelClosed: () => model.updateFilterOpenedState(false),
                onPanelOpened: () => model.updateFilterOpenedState(true),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => model.filterOpened
                ? model.onCloseFilter()
                : model.onOpenFilter(),
            child: Icon(model.filterOpened ? Icons.check : Icons.filter_list),
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

    return DefaultCard(
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
                      item.asset.symbol,
                      style: Theme.of(context).textTheme.button.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0,
                          ),
                    ),
                    SizedBox(width: 4.0),
                    Text(
                      item.isDeposit ? 'DEPOSIT' : 'WITHDRAW',
                      style: Theme.of(context).textTheme.button.copyWith(
                            color: item.isDeposit
                                ? AppColors.green
                                : AppColors.red,
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
                        onPressed: () =>
                            _viewExplorer(context, item.explorerItems),
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
                        onPressed: () => _copyHash(context, item),
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
    return SizedBox(
      width: 100,
      child: Column(
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
      ),
    );
  }

  _viewExplorer(BuildContext context, List<ExplorerItem> explorerItems) {
    List<Widget> widgets = [
      Text(
        'Explorer links:',
        style: Theme.of(context).textTheme.headline5,
      ),
      SizedBox(height: 8.0),
    ]..addAll(explorerItems
        .map((e) => FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
                _launchURL(e.url);
              },
              child: Text(
                e.name,
                style: Theme.of(context).textTheme.button.copyWith(
                      fontSize: 16.0,
                    ),
              ),
            ))
        .toList());

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        padding: EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
        height: (60 + 50 * (widgets.length - 2)).toDouble(),
        color: AppColors.primary,
        child: ListView(children: widgets),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false, forceSafariVC: false);
    } else {
      throw 'Could not launch $url';
    }
  }

  _copyHash(BuildContext context, PortfolioHistoryItem item) {
    ClipboardManager.copyToClipBoard(
      item.transactionHash.toString(),
    ).then((result) {
      final snackBar = SnackBar(
        content: Text(
          'Transaction hash copied to Clipboard',
        ),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    });
  }
}
