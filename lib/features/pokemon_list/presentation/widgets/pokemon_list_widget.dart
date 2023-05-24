import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_rest/common/widgets/pokeball_loader.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/widgets/pokemon_tile_content.dart';
import 'package:pokedex_rest/services/navigation_service/navigation_service.dart';
import 'package:pokedex_rest/style/dimensions.dart';

class PokemonListWidget extends StatelessWidget {
  final List<PokemonDetails> pokemonDetailsList;
  final bool isLoading;
  final Function(PokemonDetails) onDoubleTap;

  const PokemonListWidget({
    required this.pokemonDetailsList,
    required this.isLoading,
    required this.onDoubleTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemCount = pokemonDetailsList.length;

    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: isLoading ? itemCount + 1 : itemCount,
      itemBuilder: (_, index) {
        if (index == itemCount && isLoading) {
          return const PokeballLoader();
        }

        final pokemonDetails = pokemonDetailsList[index];

        return GestureDetector(
          onTap: () => context.router.push(
            PokemonDetailsRoute(pokemonDetails: pokemonDetails),
          ),
          onDoubleTap: () => onDoubleTap(pokemonDetails),
          child: Padding(
            padding: const EdgeInsets.only(
              left: Dimensions.sizeL,
              top: Dimensions.sizeL,
            ),
            child: PokemonTileContent(pokemonDetails: pokemonDetails),
          ),
        );
      },
    );
  }
}
