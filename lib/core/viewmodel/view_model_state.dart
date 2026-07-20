import 'package:clean_arch_core/core/viewmodel/view_model_mixin.dart';
import 'package:flutter/material.dart';

abstract class ViewModelState<T extends StatefulWidget, VM extends ViewModelMixin>
    extends State<T>
    with WidgetsBindingObserver {

  final String tag = T.toString();

  late final VM _viewModel;
  VM get viewModel => _viewModel;

  @protected
  bool get wantAppLifeCycle;

  // @protected
  // Duration get postReadyMilliseconds => const Duration(milliseconds: 350);

  VM createViewModel();

  void onAppResume();

  void onAppPause();

  void onWidgetReady();

  void onWidgetPostReady();

  @mustCallSuper
  @override
  void initState() {
    super.initState();
    _viewModel = createViewModel()..create();

    if (wantAppLifeCycle) {
      WidgetsBinding.instance.addObserver(this);
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
    if (wantAppLifeCycle) {
      WidgetsBinding.instance.removeObserver(this);
    }
    // _viewModel.dispose();
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