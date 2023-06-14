import 'package:flutter/material.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/widgets/pokemon_details_body_attributes_row.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/widgets/pokemon_details_types_row.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

class PokemonSummary extends StatelessWidget {
  final PokemonDetails pokemonDetails;

  const PokemonSummary({
    required this.pokemonDetails,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          height: pokemonDetails.height,
        )
      ],
    );
  }
}
