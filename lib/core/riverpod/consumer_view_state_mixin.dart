import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin ConsumerViewStateMixin<T extends ConsumerStatefulWidget>
    on ConsumerState<T> {

  final String tag = T.toString();

  @protected
  Duration get postReadyMilliseconds => const Duration(milliseconds: 300);

  void onAppResume();

  void onAppPause();

  void onWidgetReady();

  void onWidgetPostReady();

  @mustCallSuper
  @override
  void initState() {
    super.initState();

    if (this is WidgetsBindingObserver) {
      WidgetsBinding.instance.addObserver(this as WidgetsBindingObserver);
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onWidgetReady();
      Future.delayed(postReadyMilliseconds, () {
        onWidgetPostReady();
      });
    });
  }

  @mustCallSuper
  @override
  void dispose() {
    if (this is WidgetsBindingObserver) {
      WidgetsBinding.instance.removeObserver(this as WidgetsBindingObserver);
    }
    super.dispose();
  }

  void handleLifecycle(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        onAppResume();
        break;
      case AppLifecycleState.paused:
        onAppPause();
        break;
      case AppLifecycleState.inactive:
        // onAppInactive();
        break;
      case AppLifecycleState.detached:
        // onAppDetached();
        break;
      case AppLifecycleState.hidden:
        // onAppHidden();
        break;
    }
  }
}