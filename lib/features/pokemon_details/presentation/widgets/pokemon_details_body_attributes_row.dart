import 'package:flutter/material.dart';
import 'package:pokedex_rest/core/strings/strings.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

class PokemonDetailsBodyAttributesRow extends StatelessWidget {
  final int weight;
  final int height;

  const PokemonDetailsBodyAttributesRow({
    required this.weight,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _BodyAttributeColumn(
          label: Strings.pokemonDetailWeightLabel,
          value: Strings.pokemonDetailWeightValue(weight),
        ),
        _BodyAttributeColumn(
          label: Strings.pokemonDetailHeightLabel,
          value: Strings.pokemonDetailHeightValue(height),
        ),
      ],
    );
  }
}

class _BodyAttributeColumn extends StatelessWidget {
  final String label;
  final String value;

  const _BodyAttributeColumn({
    required this.label,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyleTokens.mainTitle,
        ),
        const SizedBox(height: Dimensions.sizeM),
        Text(
          label,
          style: TextStyleTokens.mainDescription,
        ),
      ],
    );
  }
}
