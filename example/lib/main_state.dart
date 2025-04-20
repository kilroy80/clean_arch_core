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

// final mainPageProvider = NotifierProvider.autoDispose<MainNotifier, MainState>(
//   MainNotifier.new,
// );

final mainPageProvider = AutoDisposeNotifierProvider<MainNotifier, MainState>(
  MainNotifier.new,
);

// final mainPageProvider = AutoDisposeNotifierProviderFamily<
//     MainFamilyNotifier, MainState, int>(MainFamilyNotifier.new,);

class MainNotifier extends AutoDisposeNotifier<MainState> {
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

class MainFamilyNotifier extends AutoDisposeFamilyNotifier<MainState, int> {
  @override
  MainState build(int arg) {
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