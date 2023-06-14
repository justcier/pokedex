import 'package:flutter/material.dart';
import 'package:pokedex_rest/common/widgets/favourite_icon.dart';
import 'package:pokedex_rest/common/widgets/pokemon_hero.dart';
import 'package:pokedex_rest/common/widgets/pokemon_number.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

class PokemonTileContent extends StatelessWidget {
  final PokemonDetails pokemonDetails;
  final bool? isFavourite;

  const PokemonTileContent({
    required this.pokemonDetails,
    this.isFavourite,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
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
                child: PokemonHero(
                  pokemonImageUrl: pokemonDetails.sprites.frontDefault,
                  pokemonId: pokemonDetails.id,
                ),
              ),
              Text(
                pokemonDetails.name,
                style: TextStyleTokens.mainTitle,
                maxLines: 1,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: Dimensions.sizeXXL,
            right: Dimensions.sizeXXL,
            top: Dimensions.sizeML,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FavouriteIcon(
                pokemonDetails: pokemonDetails,
                height: Dimensions.sizeXXL,
              ),
              PokemonNumber(
                id: pokemonDetails.id,
                style: TextStyleTokens.mainTitle
                    .copyWith(fontSize: Dimensions.sizeL),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
