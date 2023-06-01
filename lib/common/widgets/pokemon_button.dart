import 'package:flutter/material.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

class PokemonButton extends StatelessWidget {
  final String text;
  final Function() onTap;

  const PokemonButton({
    required this.text,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(Dimensions.sizeXL),
        margin: const EdgeInsets.all(Dimensions.sizeXL),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(Dimensions.sizeXL),
          ),
          color: ColorTokens.secondaryColor,
        ),
        child: Text(
          text,
          style: TextStyleTokens.mainTitleWhite,
        ),
      ),
    );
  }
}
