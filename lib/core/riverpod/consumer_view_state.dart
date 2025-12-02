import 'package:clean_arch_core/core/viewmodel/view_model_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ConsumerViewState<T extends ConsumerStatefulWidget>
    extends ConsumerState<T>
    with WidgetsBindingObserver {

  final String tag = T.toString();

  @protected
  bool get wantAppLifeCycle;

  @protected
  Duration get postReadyMilliseconds => const Duration(milliseconds: 350);

  void onAppResume();

  void onAppPause();

  void onWidgetReady();

  void onWidgetPostReady();

  @mustCallSuper
  @override
  void initState() {
    super.initState();

    if (wantAppLifeCycle) {
      WidgetsBinding.instance.addObserver(this);
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
    if (wantAppLifeCycle) {
      WidgetsBinding.instance.removeObserver(this);
    }
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (wantAppLifeCycle == false) return;

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