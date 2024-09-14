import 'package:flutter/material.dart';
import 'package:go_router_shell_with_page_view/src/routing/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'GoRouter Shell with PageView',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
