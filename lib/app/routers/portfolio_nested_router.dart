import 'package:antares_wallet/ui/views/portfolio/portfolio_page.dart';
import 'package:antares_wallet/ui/views/portfolio/transaction_details_view.dart';
import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter()
class $PortfolioNestedRouter {
  @initial
  PortfolioView portfolioRoute;
  TransactionDetailsView transactionDetailsRoute;
}
