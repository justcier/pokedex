import 'package:flutter/material.dart';
import 'package:pokedex_rest/features/favourites/presentation/widgets/favourites_tile_content.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/style/dimensions.dart';

class FavouritesListWidget extends StatelessWidget {
  final List<PokemonDetails> favouritesList;

  const FavouritesListWidget({
    required this.favouritesList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemCount = favouritesList.length;

    return ListView.builder(
      controller: ScrollController(),
      padding: const EdgeInsets.all(Dimensions.sizeXL),
      itemCount: itemCount,
      itemBuilder: (_, index) {
        final pokemonDetails = favouritesList[index];
        return FavouritesTileContent(pokemonDetails: pokemonDetails);
      },
    );
  }
}
