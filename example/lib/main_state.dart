import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.freezed.dart';

class MainBaseState {
  const MainBaseState({
    this.inc = 0,
  });

  final int inc;
}

@freezed
sealed class MainState extends MainBaseState
    with _$MainState {

  const MainState._() : super();

  const factory MainState.init() = MainStateInit;
  const factory MainState.load({
    @Default(0) int inc,
  }) = MainStateLoad;

// factory MainState.fromJson(Map<String, Object?> json) =>
//     _$MainStateFromJson(json);
}

// final stateProvider = StateProvider.autoDispose<int>((ref) {
//   return 0;
// });
//
// final provider = Provider.autoDispose<int>((ref) {
//   return 0;
// });
//
// final futureProvider = FutureProvider.autoDispose<int>((ref) {
//   return 0;
// });

final mainPageProvider = NotifierProvider.autoDispose<MainNotifier, MainState>(
  MainNotifier.new,
);

class MainNotifier extends Notifier<MainState> {
  @override
  MainState build() {
    // listenSelf((previous, next) {
    //   debugPrint('Changed from: $previous, next: $next');
    // });
    return const MainState.init();
  }

  Future<void> load() async {
    state = const MainState.load(inc: 0);
  }

  Future<void> increase() async {
    if (state is MainStateInit) return;

    state = (state as MainStateLoad).copyWith(
      inc: state.inc + 1,
    );

    // ref.notifyListeners();
  }

  void addListener(void Function(MainState? previous, MainState next) listener) {
    listenSelf(listener);
  }
}

final mainPageFamilyProvider = NotifierProvider.family<
    MainFamilyNotifier, MainState, int>(
  MainFamilyNotifier.new,
);

class MainFamilyNotifier extends Notifier<MainState> {
  MainFamilyNotifier(this.arg);

  final int arg;

  @override
  MainState build() {
    return const MainState.init();
  }

  Future<void> load() async {
    state = const MainState.load(inc: 0);
  }

  Future<void> increase() async {
    if (state is MainStateInit) return;

    state = (state as MainStateLoad).copyWith(
      inc: state.inc + 1,
    );

    // ref.notifyListeners();
  }
}