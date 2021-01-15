import 'package:antares_wallet/app/data/grpc/apiservice.pb.dart';
import 'package:meta/meta.dart';

@immutable
class SelectAssetArgs {
  final String title;
  final Asset selectedAsset;
  final bool onlyBase;

  const SelectAssetArgs({
    @required this.title,
    this.selectedAsset,
    this.onlyBase = false,
  });
}
