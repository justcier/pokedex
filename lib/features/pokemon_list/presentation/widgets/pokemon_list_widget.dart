import 'package:flutter/material.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
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
          final PokemonDetails pokemonDetails = pokemonDetailsList[index];

          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.sizeXL),
              color: Colors.grey,
            ),
            padding: const EdgeInsets.all(Dimensions.sizeXL),
            child: Column(
              children: [
                Text(pokemonDetails.name),
                Text("${pokemonDetails.id}"),
              ],
            ),
            // title: Text(pokemonDetails.name),
            // subtitle: Text("${pokemonDetails.id}"),
          );
        });
  }
}
