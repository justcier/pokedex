import 'package:flutter/material.dart';
import 'package:pokedex_rest/common/widgets/favourite_icon.dart';
import 'package:pokedex_rest/common/widgets/pokemon_summary.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/dimensions.dart';

class FavouritesTileContent extends StatelessWidget {
  final PokemonDetails pokemonDetails;
  final bool? isFavourite;

  const FavouritesTileContent({
    required this.pokemonDetails,
    this.isFavourite,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.sizeXL),
        border: Border.all(
          width: Dimensions.sizeS,
          color: ColorTokens.secondaryColor,
        ),
      ),
      padding: const EdgeInsets.all(Dimensions.sizeL),
      margin: const EdgeInsets.symmetric(vertical: Dimensions.sizeM),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stack(children: [
            Image.network(pokemonDetails.sprites.frontDefault),
            FavouriteIcon(pokemonDetails: pokemonDetails),
          ]),
          Flexible(
            child: PokemonSummary(pokemonDetails: pokemonDetails),
          ),
        ],
      ),
    );
  }
}
