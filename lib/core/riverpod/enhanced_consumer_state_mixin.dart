import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin EnhancedConsumerStateMixin<T extends ConsumerStatefulWidget>
    on ConsumerState<T> {

  final String tag = T.toString();

  // @protected
  // Duration get postReadyMilliseconds => const Duration(milliseconds: 350);

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
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   onWidgetReady();
    //   Future.delayed(postReadyMilliseconds, () {
    //     onWidgetPostReady();
    //   });
    // });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      onWidgetReady();

      final animation = ModalRoute.of(context)?.animation;
      if (animation == null || animation.status == AnimationStatus.completed) {
        onWidgetPostReady();
        return;
      }

      void onAnimationEnd(AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          onWidgetPostReady();
          animation.removeStatusListener(onAnimationEnd);
        }
      }
      animation.addStatusListener(onAnimationEnd);
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