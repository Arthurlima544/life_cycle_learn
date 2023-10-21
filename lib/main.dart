import 'package:flutter/material.dart';
import 'package:life_cycle_learn/life_cycle_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final lifeCycle = LifeCycleObserver();
  WidgetsBinding.instance.addObserver(lifeCycle.appLifecycleListener);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
