import 'package:antares_wallet/app/core/utils/app_log.dart';
import 'package:antares_wallet/app/core/utils/dialog_manager.dart';
import 'package:antares_wallet/app/data/grpc/common.pb.dart';
import 'package:antares_wallet/app/data/services/session_service.dart';
import 'package:get/get.dart';

mixin ErrorHandler {
  final _dialogManager = Get.find<DialogManager>();
  final _sessionService = Get.find<SessionService>();

  void handle(ErrorResponseBody error) {
    switch (error.code) {
      case ErrorCode.Unknown:
      case ErrorCode.NoData:
      case ErrorCode.InconsistentData:
      case ErrorCode.NotFound:
      case ErrorCode.Runtime:
        AppLog.logger.e(error.toProto3Json());
        _dialogManager.defaultError();
        break;
      case ErrorCode.AssetUnavailable:
        _dialogManager.error(
          title: 'Asset is unavailable',
          message: 'Please try again later',
        );
        break;
      case ErrorCode.LimitationCheckFailed:
        _dialogManager.error(
          title: 'Platform limit reached',
          message: 'Please try again later',
        );
        break;
      case ErrorCode.AmountIsBiggerThanLimit:
        _dialogManager.error(
          title: 'Limit exceeded',
          message: 'Deposit exceeds account limit',
        );
        break;
      case ErrorCode.AmountIsBiggerThanLimitAndUpgrade:
        _dialogManager.error(
          title: 'Limit exceeded',
          message: 'Please upgrade account to increase limit',
        );
        break;
      case ErrorCode.MinVolume:
        _dialogManager.error(
          title: 'Amount is less than allowed',
          message: 'The minimum amount is ${error.data}',
        );
        break;
      case ErrorCode.BadRequest:
        _dialogManager.error(
          title: 'Error ${error.code}',
          message: error.message,
        );
        break;
      case ErrorCode.Unauthorized:
        _dialogManager.error(
          title: 'Unauthorized',
          message: 'You will be logged out',
          action: () => _sessionService.completeLogout(),
        );
        break;
      default:
        break;
    }
  }
}
