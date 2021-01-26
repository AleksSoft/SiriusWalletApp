import 'package:antares_wallet/app/core/common/common.dart';

import 'main_common.dart';

Future<void> main() async {
  await mainCommon(
    AppConfig(
      appTitle: 'Dev Antares Wallet',
      environment: Environment.dev,
      apiUrls: <String>[
        'antares-api-grpc-dev.lykkex.net',
        'antares-api-grpc-test.lykkex.net',
        'antares-api-grpc-ex.swisschain.info',
        '10c7a3ce-ce6c-4146-b31a-e1c83fc98e53.lykkex.com',
      ],
    ),
  );
}
