import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class NotifierWithListener<ValueT> extends Notifier<ValueT> {
  void addListener(void Function(ValueT? previous, ValueT next) listener) {
    if (ref.mounted == false) return;
    listenSelf(listener);
  }

  void onDispose(void Function() listener) {
    if (ref.mounted == false) return;
    ref.onDispose(listener);
  }

  void authChange();
  void widgetResume();
  void widgetPause();
}

mixin NotifierListenerMixin<T> on Notifier<T> {
  void addListener(void Function(T? previous, T next) listener) {
    if (ref.mounted == false) return;
    listenSelf(listener);
  }

  void onDispose(void Function() listener) {
    if (ref.mounted == false) return;
    ref.onDispose(listener);
  }

  void authChange();
  void widgetResume();
  void widgetPause();
}

/// Although we extended the AsyncNotifier class, it is limited to use when there are
/// multiple UI states. It can only handle "loading, data, and error" states.
abstract class AsyncNotifierWithListener<AsyncValueT> extends AsyncNotifier<AsyncValueT> {
  void addListener(void Function(
      AsyncValue<AsyncValueT>? previous,
      AsyncValue<AsyncValueT> next) listener) {
    if (ref.mounted == false) return;
    listenSelf(listener);
  }

  void onDispose(void Function() listener) {
    if (ref.mounted == false) return;
    ref.onDispose(listener);
  }

  void authChange();
  void widgetResume();
  void widgetPause();
}

/// Although we extended the AsyncNotifier class, it is limited to use when there are
/// multiple UI states. It can only handle "loading, data, and error" states.
mixin AsyncNotifierListenerMixin<AsyncValueT> on AsyncNotifier<AsyncValueT> {
  void addListener(void Function(
      AsyncValue<AsyncValueT>? previous,
      AsyncValue<AsyncValueT> next) listener) {
    if (ref.mounted == false) return;
    listenSelf(listener);
  }

  void onDispose(void Function() listener) {
    if (ref.mounted == false) return;
    ref.onDispose(listener);
  }

  void authChange();
  void widgetResume();
  void widgetPause();
}