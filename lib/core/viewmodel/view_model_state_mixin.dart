import 'package:clean_arch_core/core/viewmodel/view_model_mixin.dart';
import 'package:flutter/material.dart';

mixin ViewModelStateMixin<T extends StatefulWidget, VM extends ViewModelMixin>
  on State<T> {

  final String tag = T.toString();

  late final VM _viewModel;
  VM get viewModel => _viewModel;

  @protected
  Duration get postReadyMilliseconds => const Duration(milliseconds: 350);

  VM createViewModel();

  void onAppResume();

  void onAppPause();

  void onWidgetReady();

  void onWidgetPostReady();

  @override
  void initState() {
    super.initState();
    _viewModel = createViewModel()..create();

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

  @override
  void dispose() {
    if (this is WidgetsBindingObserver) {
      WidgetsBinding.instance.removeObserver(this as WidgetsBindingObserver);
    }
    // _viewModel.dispose();
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