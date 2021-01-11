import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:logger_flutter/logger_flutter.dart';

class AppLog {
  static Logger get logger => Logger(
        filter: _AppLogFilter(),
        printer: PrettyPrinter(
          methodCount: 2,
          errorMethodCount: 8,
          lineLength: 80,
          printTime: true,
        ),
      );

  static Logger get loggerNoStack => Logger(
        filter: _AppLogFilter(),
        printer: PrettyPrinter(
          methodCount: 0,
          lineLength: 80,
          printTime: true,
        ),
      );

  static void showConsole() => Get.to(
        LogConsole(
          dark: Get.isPlatformDarkMode,
          showCloseButton: true,
        ),
      );
}

class _AppLogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return true;
  }
}

// Logger getLogger(String className) {
//   return Logger(printer: CustomLogPrinter(className));
// }
//
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
