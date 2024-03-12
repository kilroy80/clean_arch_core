import 'package:flutter/material.dart';

class ContextHelper {
  static GlobalKey<NavigatorState> navigatorState = GlobalKey<NavigatorState>();

  static GlobalKey<ScaffoldMessengerState> scaffoldMessengerState =
    GlobalKey<ScaffoldMessengerState>();

  static BuildContext? currentContext =
      navigatorState.currentContext ?? scaffoldMessengerState.currentContext;
}