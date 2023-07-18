import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScreenUtil {

  static Future<void> portraitModeOnly() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  static Future<void> landscapeModeOnly() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  static Future<void> enableRotation() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  static void setAppUIOverlayStyle(
      SystemUiOverlayStyle style) {
    if (!kIsWeb) {
      if (Platform.isIOS) {
        SystemChrome.setSystemUIOverlayStyle(style);
      } else {
        if (style == SystemUiOverlayStyle.dark) {
          SystemChrome.setSystemUIOverlayStyle(
              const SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent,
                  statusBarIconBrightness: Brightness.dark,
                  statusBarBrightness: Brightness.dark)
          );
        } else {
          SystemChrome.setSystemUIOverlayStyle(
              const SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent,
                  statusBarIconBrightness: Brightness.light,
                  statusBarBrightness: Brightness.light)
          );
        }

        // if (style == SystemUiOverlayStyle.dark) {
        //   SystemChrome.setSystemUIOverlayStyle(
        //       const SystemUiOverlayStyle(
        //           statusBarColor: Colors.black,
        //           statusBarIconBrightness: Brightness.light,
        //           statusBarBrightness: Brightness.light)
        //   );
        // } else {
        //   if (isBarWhiteColor == false) {
        //     SystemChrome.setSystemUIOverlayStyle(
        //         const SystemUiOverlayStyle(
        //             statusBarColor: Colors.transparent,
        //             statusBarIconBrightness: Brightness.light,
        //             statusBarBrightness: Brightness.light)
        //     );
        //   } else {
        //     SystemChrome.setSystemUIOverlayStyle(
        //         const SystemUiOverlayStyle(
        //             statusBarColor: Colors.transparent,
        //             statusBarIconBrightness: Brightness.dark,
        //             statusBarBrightness: Brightness.dark)
        //     );
        //   }
        // }
      }
    }
  }

  static void resetAppUIOverlayStyle(SystemUiOverlayStyle style) {
    if (!kIsWeb) {
      SystemChrome.setSystemUIOverlayStyle(style);
    }
  }
}
