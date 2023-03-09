import 'package:flutter/material.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

import 'features/home/presentation/pages/home_page.dart';

void main() {
  configureInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pokedex',
      home: HomePage(),
    );
  }
}
