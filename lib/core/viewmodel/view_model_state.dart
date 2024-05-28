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

  VM createViewModel();

  void onAppResume();

  void onAppPause();

  void onWidgetReady();

  @mustCallSuper
  @override
  void initState() {
    super.initState();
    _viewModel = createViewModel()..create();

    if (wantAppLifeCycle) {
      WidgetsBinding.instance.addObserver(this);
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onWidgetReady();
    });
  }

  @mustCallSuper
  @override
  void dispose() {
    if (wantAppLifeCycle) {
      WidgetsBinding.instance.removeObserver(this);
    }
    _viewModel.dispose();
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