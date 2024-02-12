import 'package:counter_app/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      home: const LoginScreen(),
      initialRoute: "/login",
      routes: <String, WidgetBuilder>{
//        "/": (context) => const LoginScreen(),
        "/counter": (context) => const CounterScreen(),
        "/login": (context) => const LoginScreen(),
      },
    );
  }
}
