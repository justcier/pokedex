import 'package:flutter/material.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/types/types.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/pokemon_types_to_color_map.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

class PokemonDetailsTypesRow extends StatelessWidget {
  final List<Type> types;

  const PokemonDetailsTypesRow({
    required this.types,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: types.map((typeObject) {
        final String typeName = typeObject.type.name;

        return Container(
          padding: const EdgeInsets.all(Dimensions.sizeM),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(Dimensions.sizeL),
            ),
            color: pokemonTypeToColorMap[typeName],
          ),
          child: Text(
            typeName,
            style: TextStyleTokens.mainTitleWhite,
          ),
        );
      }).toList(),
    );
  }
}
