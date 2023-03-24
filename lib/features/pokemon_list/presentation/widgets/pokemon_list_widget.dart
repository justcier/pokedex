import 'package:flutter/material.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/widgets/pokemon_tile_content.dart';
import 'package:pokedex_rest/style/dimensions.dart';

class PokemonListWidget extends StatelessWidget {
  final List<PokemonDetails> pokemonDetailsList;

  const PokemonListWidget({
    required this.pokemonDetailsList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(Dimensions.sizeXL),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: Dimensions.sizeXL,
          crossAxisSpacing: Dimensions.sizeXL,
        ),
        itemCount: pokemonDetailsList.length,
        itemBuilder: (_, index) {
          return PokemonTileContent(pokemonDetails: pokemonDetailsList[index]);
        });
  }
}
