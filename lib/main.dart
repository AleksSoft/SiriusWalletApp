import 'app/common/common.dart';
import 'main_common.dart';

Future<void> main() async {
  await mainCommon(
    AppConfig(
      appTitle: 'Antares Wallet',
      environment: Environment.prod,
      apiUrls: <String>['10c7a3ce-ce6c-4146-b31a-e1c83fc98e53.lykkex.com'],
    ),
  );
}
