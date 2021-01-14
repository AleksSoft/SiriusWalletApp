import 'package:antares_wallet/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class AppLog {
  static Logger get logger => Logger(
        filter: _AppLogFilter(),
        printer: PrettyPrinter(),
      );

  static Logger get loggerNoStack => Logger(
        filter: _AppLogFilter(),
        printer: PrettyPrinter(methodCount: 0, errorMethodCount: 0),
      );

  static void showConsole() => Get.toNamed(Routes.LOG_CONSOLE);
}

class _AppLogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return true;
  }
}

// class CustomLogPrinter extends LogPrinter {
//   final String className;
//
//   CustomLogPrinter(this.className);
//
//   @override
//   List<String> log(LogEvent event) {
//     if (event.message.length > 1024) {
//       printWrapped(event.message);
//       return [
//         '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
//       ];
//     } else {
//       String emoji = PrettyPrinter.levelEmojis[event.level];
//       var color = PrettyPrinter.levelColors[event.level];
//       return [
//         '$color($emoji [$className] ${PrettyPrinter.singleDivider} ${event.message})'
//       ];
//     }
//   }
//
//   void printWrapped(String text) {
//     final pattern = RegExp('.{1,800}');
//     pattern.allMatches(text).forEach((match) => debugPrint(match.group(0)));
//   }
// }
