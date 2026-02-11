import 'package:flutter/material.dart';

import '../presentation/home_screen.dart';

class NamedRoutes {
  NamedRoutes._();

  static const String home = '/';
}

class AppRoutes {
 static Route<dynamic> getRoutes(RouteSettings setting) {
    switch (setting.name) {
      case NamedRoutes.home:
        return MaterialPageRoute(builder: (context) => Center(child: HomeScreen()));

      default:
        return MaterialPageRoute(builder: (context) => Center(child: Scaffold(body: Center(child: Text("No Page found"),),)));
    }
  }
}
