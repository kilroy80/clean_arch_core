import 'dart:ui';

import 'package:clean_arch_core/clean_arch_core.dart';
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
      home: const StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Demo Home Page'),
      ),
      body: const Center(
        child: Text('Start Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) =>
              const MyHomePage(title: 'My Home Page'),
            ),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage>
  with ConsumerViewStateMixin<MyHomePage>,
      WidgetsBindingObserver {

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
    /// protected method
    // ref.read(mainPageProvider.notifier).listenSelf((previous, next) {
    //   debugPrint('Changed from: $previous, next: $next');
    // });

    ref.read(mainPageProvider.notifier).addListener((previous, next) {
      debugPrint('Changed from: $previous, next: $next');
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    handleLifecycle(state);
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