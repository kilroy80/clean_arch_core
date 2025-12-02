import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:clean_arch_core/core/riverpod/consumer_view_state.dart';
import 'package:example/bloc/main_bloc.dart';
import 'package:example/riverpod/main_river_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    /// RiverPod Global Provider
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
      title: 'Flutter State Demo',
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
        title: const Text('Flutter State Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>
                  const BlocPage(title: 'Bloc State Example'),
                ));
              },
              child: const Text('Bloc State Example'),
            ),
            const SizedBox(height: 20.0,),
            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>
                  const RiverPodPage(title: 'RiverPod State Example'),
                ));
              },
              child: const Text('RiverPod State Example'),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(context, MaterialPageRoute(
      //       builder: (context) =>
      //         const MyHomePage(title: 'My Home Page'),
      //       ),
      //     );
      //   },
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}

/// ===================
///  Bloc Example Page
/// ===================
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
///  // mixin type example
///  ```dart
///  class _BlocPageState extends State<BlocPage> {
///     with ViewModelStateMixin<BlocPage, MainBloc>, WidgetsBindingObserver
///  }
///
///  // state extends type example
///  ```dart
///  class _BlocPageState extends ViewModelState<BlocPage, MainBloc> {
///    with ViewModelStateMixin<BlocPage, MainBloc>
///  }
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

/// =======================
///  RiverPod example Page
/// =======================
class RiverPodPage extends ConsumerStatefulWidget {
  const RiverPodPage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<RiverPodPage> createState() => _RiverPodPageState();
}

///
///  // mixin type example
///  ```dart
///  class _RiverPodPageState extends ConsumerState<RiverPodPage> {
///     with ConsumerViewStateMixin<RiverPodPage>, WidgetsBindingObserver
///  }
///
///  // state extends type example
///  ```dart
///  class _RiverPodPageState extends ConsumerViewState<RiverPodPage> {
///  }
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