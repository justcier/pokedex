import 'package:flutter/material.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/widgets/pokemon_details_body_attributes_row.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/widgets/pokemon_details_types_row.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

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
      padding: const EdgeInsets.all(Dimensions.sizeXL),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.network(pokemonDetails.sprites.frontDefault),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  pokemonDetails.name,
                  style: TextStyleTokens.mainTitleBig,
                  maxLines: 1,
                ),
                const SizedBox(height: Dimensions.sizeL),
                PokemonDetailsTypesRow(types: pokemonDetails.types),
                const SizedBox(height: Dimensions.sizeL),
                PokemonDetailsBodyAttributesRow(
                    weight: pokemonDetails.weight,
                    height: pokemonDetails.height)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
