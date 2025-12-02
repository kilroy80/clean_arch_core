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

  void widgetResume();
  void widgetPause();
}