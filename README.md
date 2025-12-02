# clean_arch_core

A **Dart library** that provides the foundational abstractions for implementing **Clean Architecture**,  
including `UseCase`, `Success`, `Failure`, and reactive **View State** management for UI frameworks like **Bloc** or **Riverpod**.

---

## Overview

`clean_arch_core` helps you structure Dart or Flutter projects with clear separation between  
**domain logic (UseCases)** and **presentation state**, providing simple yet powerful base classes  
like `ViewModelState` and `ConsumerViewState` to integrate easily with any UI framework.

---

## Architecture Layers

```
Presentation  →  View / State
Domain        →  UseCase / Entity
Data          →  Repository / API
```

---

## Features

- **UseCase abstraction** — clean domain logic
- **Success** / **Failure** type — unified success/error handling
- **ViewModelState** / **ConsumerViewState** — structured, reactive UI states
- **Integrates seamlessly** with Bloc, Riverpod, or any Flutter architecture

---

## Example — Bloc + ViewModelState

When using **Bloc**, you can extend `ViewModelState` to manage UI states more declaratively.  
`ViewModelState` provides helpers for common state transitions (idle → loading → success → error).

```dart
import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class MainBloc
    extends Bloc<MainEvent, MainState>
    with ViewModelMixin {
  MainBloc() : super(const MainState.init()) {
    on<MainEvent>((event, emit) async {
      switch (event) {
        case _Load():
          await _load(event, emit);
        case _Increase():
          await _increase(event, emit);
      }
    });
  }

  Future<void> _load(_Load event, Emitter<MainState> emit) async {
    emit(const MainState.load());
  }

  Future<void> _increase(_Increase event, Emitter<MainState> emit) async {
    emit(
      state.copyWith(
        data: state.data.copyWith(
          inc: state.data.inc + 1,
        ),
      ),
    );
  }

  @override
  void authChange() {
  }

  @override
  void create() {
  }

  @override
  void widgetPause() {
  }

  @override
  void widgetResume() {
  }
}

@freezed
sealed class MainEvent with _$MainEvent {
  const factory MainEvent.load() = _Load;
  const factory MainEvent.increase() = _Increase;
}

@freezed
abstract class MainBlocData with _$MainBlocData {
  const factory MainBlocData({
    @Default(0) int inc,
  }) = _MainBlocData;
}

@freezed
sealed class MainState with _$MainState {
  const factory MainState.init({
    @Default(MainBlocData()) MainBlocData data,
  }) = MainStateInit;
  const factory MainState.load({
    @Default(MainBlocData()) MainBlocData data,
  }) = MainStateLoad;
}
```

In your widget:

```dart
class BlocPage extends StatefulWidget {
  const BlocPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<BlocPage> createState() => _BlocPageState();
}

///
///  ```dart 
///  // mixin type example
///  class _BlocPageState extends State<BlocPage> {
///     with ViewModelStateMixin<BlocPage, MainBloc>, WidgetsBindingObserver
///  }
///
///  // state extends type example
///  class _BlocPageState extends ViewModelState<BlocPage, MainBloc> {
///    with ViewModelStateMixin<BlocPage, MainBloc>
///  }
///  ```
///
class _BlocPageState extends State<BlocPage>
    with ViewModelStateMixin<BlocPage, MainBloc>,
        WidgetsBindingObserver {

  @override
  MainBloc createViewModel() => MainBloc();

  @override
  void onAppPause() {
  }

  @override
  void onAppResume() {
  }

  @override
  void onWidgetPostReady() {
    viewModel.add(const MainEvent.load());
  }

  @override
  void onWidgetReady() {
  }

  /// state type
  // @override
  // bool get wantAppLifeCycle => true;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    /// mixin type
    super.handleLifecycle(state);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: BlocConsumer(
        bloc: viewModel,
        listener: (BuildContext context, MainState state) {},
        builder: (BuildContext context, MainState state) {
          return Center(
            child: switch (state) {
              MainStateInit() => const Center(
                child: CircularProgressIndicator(),
              ),
              MainStateLoad() => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${state.data.inc}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.add(const MainEvent.increase());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
```

This example keeps UI state predictable and testable through `ViewModelState`.

---

## Example — Riverpod + ConsumerViewState

For **Riverpod**, `ConsumerViewState` can be used to encapsulate UI logic in a declarative and reactive way.

```dart
import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

  factory MainState.fromJson(Map<String, Object?> json) =>
      _$MainStateFromJson(json);
}

final mainPageProvider = NotifierProvider.autoDispose<MainNotifier, MainRiverState>(
  MainNotifier.new,
);

class MainNotifier extends NotifierWithListener<MainRiverState> {
  @override
  MainRiverState build() {
    ref.onDispose(() {
      // dispose logic
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
  }

  @override
  void authChange() {
  }

  @override
  void widgetPause() {
  }

  @override
  void widgetResume() {
  }
}
```

Usage in a widget:

```dart
class RiverPodPage extends ConsumerStatefulWidget {
  const RiverPodPage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<RiverPodPage> createState() => _RiverPodPageState();
}

///
///  ```dart
///  // mixin type example
///  class _RiverPodPageState extends ConsumerState<RiverPodPage> {
///     with ConsumerViewStateMixin<RiverPodPage>, WidgetsBindingObserver
///  }
///
///  // state extends type example
///  class _RiverPodPageState extends ConsumerViewState<RiverPodPage> {
///  }
///  ```
///
class _RiverPodPageState extends ConsumerState<RiverPodPage>
    with ConsumerViewStateMixin<RiverPodPage>,
        WidgetsBindingObserver {

  @override
  void onAppPause() {
  }

  @override
  void onAppResume() {
  }

  @override
  void onWidgetPostReady() async {
    ref.read(mainPageProvider.notifier).load();
  }

  @override
  void onWidgetReady() {
    ref.read(mainPageProvider.notifier).addListener((previous, next) {
      debugPrint('Changed from: $previous, next: $next');
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    /// mixin type
    super.handleLifecycle(state);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(mainPageProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: switch (state) {
          MainRiverStateInit() => const Center(
            child: CircularProgressIndicator(),
          ),
          MainRiverStateLoad() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${state.data.inc}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(mainPageProvider.notifier).increase();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
```

This approach provides a clean, framework-agnostic view model for Riverpod’s reactive context.

---

## Test

Run unit tests:

```bash
dart test
```

---

## License

See the `LICENSE` file for details.