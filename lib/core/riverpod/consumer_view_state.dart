import 'package:clean_arch_core/core/viewmodel/view_model_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ConsumerViewState<T extends ConsumerStatefulWidget>
    extends ConsumerState<T>
    with WidgetsBindingObserver {

  final String tag = T.toString();

  // late final S _notifier;
  // S get notifier => _notifier;

  @protected
  bool get wantAppLifeCycle;

  @protected
  Duration get postReadyMilliseconds => const Duration(milliseconds: 250);

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
    // _notifier.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed && wantAppLifeCycle) {
      onAppResume();
    } else if (state == AppLifecycleState.paused && wantAppLifeCycle) {
      onAppPause();
    }
  }
}