import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/widgets/pokemon_tile_content.dart';
import 'package:pokedex_rest/services/navigation_service/navigation_service.dart';
import 'package:pokedex_rest/style/dimensions.dart';

class PokemonListWidget extends StatelessWidget {
  final List<PokemonDetails> pokemonDetailsList;
  final ScrollController gridViewScrollController;
  final bool isLoading;

  const PokemonListWidget({
    required this.pokemonDetailsList,
    required this.gridViewScrollController,
    required this.isLoading,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemCount = pokemonDetailsList.length;

    return GridView.builder(
      controller: gridViewScrollController,
      padding: const EdgeInsets.all(Dimensions.sizeXL),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: Dimensions.sizeXL,
        crossAxisSpacing: Dimensions.sizeXL,
      ),
      itemCount: isLoading ? itemCount + 1 : itemCount,
      itemBuilder: (_, index) {
        if (index == itemCount && isLoading) {
          return const CircularProgressIndicator();
        }

        return GestureDetector(
          onTap: () => context.router.push(const PokemonDetailsRoute()),
          child: PokemonTileContent(pokemonDetails: pokemonDetailsList[index]),
        );
      },
    );
  }
}
