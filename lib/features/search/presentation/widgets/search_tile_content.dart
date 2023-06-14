import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_rest/common/widgets/favourite_icon.dart';
import 'package:pokedex_rest/common/widgets/pokemon_button.dart';
import 'package:pokedex_rest/common/widgets/pokemon_hero.dart';
import 'package:pokedex_rest/common/widgets/pokemon_number.dart';
import 'package:pokedex_rest/common/widgets/pokemon_summary.dart';
import 'package:pokedex_rest/core/extensions/build_context_extensions.dart';
import 'package:pokedex_rest/core/strings/strings.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/services/navigation_service/navigation_service.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

class SearchTileContent extends StatelessWidget {
  final PokemonDetails pokemonDetails;
  final bool? isFavourite;
  final VoidCallback onTap;

  const SearchTileContent({
    required this.pokemonDetails,
    required this.onTap,
    this.isFavourite,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.sizeL),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FavouriteIcon(
                pokemonDetails: pokemonDetails,
                height: Dimensions.sizeXXXXL,
              ),
              PokemonNumber(
                id: pokemonDetails.id,
                style: TextStyleTokens.mainTitleMedium,
              ),
            ],
          ),
          SizedBox(
            height: context.screenHeight / 3,
            child: PokemonHero(
              pokemonId: pokemonDetails.id,
              pokemonImageUrl: pokemonDetails.sprites.frontDefault,
            ),
          ),
          PokemonSummary(pokemonDetails: pokemonDetails),
          Padding(
            padding: const EdgeInsets.all(Dimensions.sizeXL),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PokemonButton(
                  text: Strings.backButton,
                  onTap: onTap,
                ),
                PokemonButton(
                  text: Strings.goToDetailsButton,
                  onTap: () => context.router.push(
                    PokemonDetailsRoute(pokemonDetails: pokemonDetails),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
