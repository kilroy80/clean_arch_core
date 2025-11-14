import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin ConsumerViewStateMixin<T extends ConsumerStatefulWidget>
    on ConsumerState<T> {

  final String tag = T.toString();

  // late final S _notifier;
  // S get notifier => _notifier;

  @protected
  Duration get postReadyMilliseconds => const Duration(milliseconds: 300);

  // S createNotifier();

  void onAppResume();

  void onAppPause();

  void onWidgetReady();

  void onWidgetPostReady();

  @mustCallSuper
  @override
  void initState() {
    super.initState();
    // _notifier = createNotifier()..create();

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
    // _notifier.dispose();
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