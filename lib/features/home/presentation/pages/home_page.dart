import 'package:flutter/material.dart';
import 'package:pokedex_rest/common/dummy_data.dart';
import 'package:pokedex_rest/common/widgets/common_scaffold.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/widgets/pokemon_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: PokemonList(pokemonList: testPokemonList),
      title: "Pokedex",
    );
  }
}
