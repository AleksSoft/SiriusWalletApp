import 'package:antares_wallet/ui/views/more/more_page.dart';
import 'package:antares_wallet/ui/views/more/profile_view.dart';
import 'package:antares_wallet/ui/views/more/settings_view.dart';
import 'package:antares_wallet/ui/views/more/support_view.dart';
import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter()
class $MoreNestedRouter {
  @initial
  MoreView moreRoute;
  SettingsView moreSettingsRoute;
  // AboutView moreAboutViewRoute;
  ProfileView moreProfileRoute;
  SupportView moreSupportRoute;
}
