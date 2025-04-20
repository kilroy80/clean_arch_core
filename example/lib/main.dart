import 'package:clean_arch_core/core/riverpod/consumer_view_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'main_state.dart';

/// Riverpod Example
void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerViewState<MyHomePage> {

  @override
  void onAppPause() {
  }

  @override
  void onAppResume() {
  }

  @override
  void onWidgetPostReady() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    ref.read(mainPageProvider.notifier).load();
  }

  @override
  void onWidgetReady() {
    ref.read(mainPageProvider.notifier).listenSelf((previous, next) {
      debugPrint('Changed from: $previous, next: $next');
    });
  }

  @override
  bool get wantAppLifeCycle => false;

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
                '${state.inc}',
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

// final homeVM = StateProvider.autoDispose<int>((ref) {
//   return 0;
// });
//
// final homeVM2 = Provider.autoDispose<int>((ref) {
//   return 0;
// });
//
// final homeVM3 = FutureProvider.autoDispose<int>((ref) {
//   return 0;
// });

// final mainStateProvider = NotifierProvider.autoDispose<MainState, int>(
//   MainState.new,
// );

// final mainStateProvider = AutoDisposeNotifierProvider<MainState, int>(
//   MainState.new,
// );
//
// class MainState extends AutoDisposeNotifier<int> {
//   // @override
//   // Future<List<String>> build() async {
//   //   return [
//   //     'a', 'b',
//   //   ];
//   // }
//
//   @override
//   int build() {
//     return 0;
//   }
//
//   Future<void> addTodo() async {
//     state = (state + 1);
//     // ref.notifyListeners();
//   }
// }