import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_rest/common/widgets/common_scaffold.dart';

@RoutePage()
class PokemonDetailsPage extends StatelessWidget {
  const PokemonDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
        body: Container(
          child: const Text('Ziom'),
        ),
        title: 'Pokemon Details Page');
  }
}
