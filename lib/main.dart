import 'package:flutter/material.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';
import 'package:pokedex_rest/services/navigation_service/navigation_service.dart';

void main() {
  configureInjector();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}
