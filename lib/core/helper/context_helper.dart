import 'package:flutter/widgets.dart';

class ContextHelper {
  static GlobalKey<NavigatorState> navigatorState = GlobalKey<NavigatorState>();

  static BuildContext? currentContext = navigatorState.currentContext;
}