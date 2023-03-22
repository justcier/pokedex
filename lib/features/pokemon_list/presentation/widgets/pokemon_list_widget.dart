import 'package:flutter/material.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon/pokemon.dart';

class PokemonListWidget extends StatelessWidget {
  final List<Pokemon> results;

  const PokemonListWidget({
    required this.results,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: results.length,
        itemBuilder: (_, index) {
          final Pokemon pokemon = results[index];

          return ListTile(title: Text(pokemon.name));
        });
  }
}
