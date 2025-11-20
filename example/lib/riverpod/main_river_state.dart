import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_river_state.freezed.dart';

@freezed
abstract class MainRiverData with _$MainRiverData {
  const factory MainRiverData({
    @Default(0) int inc,
  }) = _MainRiverData;
}

@freezed
sealed class MainRiverState
    with _$MainRiverState {

  const factory MainRiverState.init({
    @Default(MainRiverData()) MainRiverData data,
  }) = MainRiverStateInit;
  const factory MainRiverState.load({
    @Default(MainRiverData()) MainRiverData data,
  }) = MainRiverStateLoad;

// factory MainState.fromJson(Map<String, Object?> json) =>
//     _$MainStateFromJson(json);
}

/// StateProvider deprecate >= riverpod 3.0.0
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

final mainPageProvider = NotifierProvider.autoDispose<MainNotifier, MainRiverState>(
  MainNotifier.new,
);

class MainNotifier extends NotifierWithListener<MainRiverState> {
  @override
  MainRiverState build() {
    // listenSelf((previous, next) {
    //   debugPrint('Changed from: $previous, next: $next');
    // });
    ref.onDispose(() {
      debugPrint('$this: dispose');
    });
    return const MainRiverState.init();
  }

  Future<void> load() async {
    state = const MainRiverState.load();
  }

  Future<void> increase() async {
    if (state is MainRiverStateInit) return;

    state = state.copyWith(
      data: state.data.copyWith(
        inc: state.data.inc + 1,
      ),
    );

    // ref.notifyListeners();
  }

  @override
  void widgetPause() {
  }

  @override
  void widgetResume() {
  }
}

final mainPageFamilyProvider = NotifierProvider.family<
    MainFamilyNotifier, MainRiverState, int>(
  MainFamilyNotifier.new,
);

class MainFamilyNotifier extends NotifierWithListener<MainRiverState> {
  MainFamilyNotifier(this.arg);

  final int arg;

  @override
  MainRiverState build() {
    return const MainRiverState.init();
  }

  Future<void> load() async {
    state = const MainRiverState.load();
  }

  Future<void> increase() async {
    if (state is MainRiverStateInit) return;

    state = state.copyWith(
      data: state.data.copyWith(
        inc: state.data.inc + 1,
      ),
    );

    // ref.notifyListeners();
  }

  @override
  void widgetPause() {
  }

  @override
  void widgetResume() {
  }
}