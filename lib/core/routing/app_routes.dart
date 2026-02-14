import 'package:flutter/material.dart';
import 'package:gold_tracker/feature/auth/presentation/screens/golden_screen.dart';
import 'package:gold_tracker/feature/auth/presentation/screens/silver_screen.dart';

import '../presentation/home_screen.dart';

class NamedRoutes {
  NamedRoutes._();

  static const String home = '/';
  static const String gold = '/gold';
  static const String silver = '/silver';
}

class AppRoutes {
  static Route<dynamic> getRoutes(RouteSettings setting) {
    switch (setting.name) {
      case NamedRoutes.home:
        return MaterialPageRoute(builder: (context) => Center(child: HomeScreen()));

      case NamedRoutes.gold:
        return MaterialPageRoute(builder: (context) => Center(child: GoldenScreen()));

      case NamedRoutes.silver:
        return MaterialPageRoute(builder: (context) => Center(child: SilverScreen()));
      default:
        return MaterialPageRoute(
          builder: (context) => Center(
            child: Scaffold(body: Center(child: Text("No Page found"))),
          ),
        );
    }
  }
}
