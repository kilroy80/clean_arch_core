import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class NotifierWithListener<ValueT> extends Notifier<ValueT> {
  void addListener(void Function(ValueT? previous, ValueT next) listener) {
    listenSelf(listener);
  }
}

mixin NotifierListener<T> {
  void addListener(void Function(T? previous, T next) listener);
}