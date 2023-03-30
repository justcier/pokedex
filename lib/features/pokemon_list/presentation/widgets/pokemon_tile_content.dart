import 'package:flutter/material.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

class PokemonTileContent extends StatelessWidget {
  final PokemonDetails pokemonDetails;

  const PokemonTileContent({
    required this.pokemonDetails,
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
      child: Column(
        children: [
          Expanded(
            child: Hero(
              tag: pokemonDetails.id,
              child: Image.network(
                pokemonDetails.sprites.frontDefault,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            pokemonDetails.name,
            style: TextStyleTokens.mainTitle,
          ),
        ],
      ),
    );
  }
}
