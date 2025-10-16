# clean_arch_core

A **Dart library** that provides the foundational abstractions for implementing **Clean Architecture**,  
including `UseCase`, `Result`, and reactive **View State** management for UI frameworks like **Bloc** or **Riverpod**.

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
- **Result** type — unified success/error handling
- **ViewModelState** / **ConsumerViewState** — structured, reactive UI states
- **Integrates seamlessly** with Bloc, Riverpod, or any Flutter architecture

---

## Example — Basic Flutter

A simplified version of the `example/lib/main.dart`:

```dart
import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutter/material.dart';

class IncrementUseCase extends UseCase<int, int> {
  @override
  Future<Result<int>> call(int count) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return Success(count + 1);
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => const MaterialApp(home: MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _useCase = IncrementUseCase();
  int _count = 0;
  bool _loading = false;

  Future<void> _increment() async {
    setState(() => _loading = true);
    final result = await _useCase(_count);
    result.when(
      success: (value) => _count = value,
      failure: (_) => debugPrint('Error'),
    );
    setState(() => _loading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Clean Arch Example')),
        body: Center(
          child: _loading
              ? const CircularProgressIndicator()
              : Text('Count: $_count'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _increment,
          child: const Icon(Icons.add),
        ),
      );
}
```

---

## Example — Bloc + ViewModelState

When using **Bloc**, you can extend `ViewModelState` to manage UI states more declaratively.  
`ViewModelState` provides helpers for common state transitions (idle → loading → success → error).

```dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_arch_core/clean_arch_core.dart';

// Domain logic
class IncrementUseCase extends UseCase<int, int> {
  @override
  Future<Result<int>> call(int count) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return Success(count + 1);
  }
}

// View State extending ViewModelState
class CounterState extends ViewModelState<int> {
  const CounterState({
    super.data,
    super.isLoading = false,
    super.error,
  });

  CounterState copyWith({
    int? data,
    bool? isLoading,
    Object? error,
  }) =>
      CounterState(
        data: data ?? this.data,
        isLoading: isLoading ?? this.isLoading,
        error: error ?? this.error,
      );
}

// Bloc Implementation
class CounterBloc extends Bloc<void, CounterState> {
  final IncrementUseCase useCase;

  CounterBloc(this.useCase) : super(const CounterState(data: 0)) {
    on<void>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await useCase(state.data ?? 0);
      result.when(
        success: (value) =>
            emit(state.copyWith(data: value, isLoading: false)),
        failure: (e) =>
            emit(state.copyWith(isLoading: false, error: e)),
      );
    });
  }
}
```

In your widget:

```dart
BlocBuilder<CounterBloc, CounterState>(
  builder: (context, state) {
    if (state.isLoading) return const CircularProgressIndicator();
    return Text('Count: ${state.data}');
  },
);
```

This example keeps UI state predictable and testable through `ViewModelState`.

---

## Example — Riverpod + ConsumerViewState

For **Riverpod**, `ConsumerViewState` can be used to encapsulate UI logic in a declarative and reactive way.

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clean_arch_core/clean_arch_core.dart';

class IncrementUseCase extends UseCase<int, int> {
  @override
  Future<Result<int>> call(int count) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return Success(count + 1);
  }
}

// Extend ConsumerViewState
class CounterViewState extends ConsumerViewState<int> {
  CounterViewState({required this.useCase})
      : super(const ConsumerStateContent(data: 0));

  final IncrementUseCase useCase;

  Future<void> increment() async {
    setLoading(true);
    final result = await useCase(data ?? 0);
    result.when(
      success: (value) => setData(value),
      failure: (e) => setError(e),
    );
    setLoading(false);
  }
}

final counterProvider = StateNotifierProvider<CounterViewState, ConsumerStateContent<int>>(
  (ref) => CounterViewState(useCase: IncrementUseCase()),
);
```

Usage in a widget:

```dart
Widget build(BuildContext context, WidgetRef ref) {
  final state = ref.watch(counterProvider);
  final notifier = ref.read(counterProvider.notifier);

  return Scaffold(
    body: Center(
      child: state.isLoading
          ? const CircularProgressIndicator()
          : Text('Count: ${state.data}'),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: notifier.increment,
      child: const Icon(Icons.add),
    ),
  );
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