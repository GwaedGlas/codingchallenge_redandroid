import 'package:flutter/material.dart';

import 'navigation/routes.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      routes: {
        Routes.splash.route: (_) => Container(),
        Routes.main.route: (_) => Container(),
        Routes.details.route: (_) => Container(),
      }
    );
  }
}
