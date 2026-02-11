import 'package:flutter/material.dart';
import 'package:gold_tracker/core/routing/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.getRoutes,
      initialRoute: NamedRoutes.home,
    );
  }
}