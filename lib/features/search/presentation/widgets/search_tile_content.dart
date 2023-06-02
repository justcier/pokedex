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
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_cubit.dart';
import 'package:pokedex_rest/services/navigation_service/navigation_service.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

class SearchTileContent extends StatelessWidget {
  final PokemonDetails pokemonDetails;
  final bool? isFavourite;
  final PokemonListCubit pokemonListCubit;
  final VoidCallback clearSearchField;

  const SearchTileContent({
    required this.pokemonDetails,
    required this.pokemonListCubit,
    required this.clearSearchField,
    this.isFavourite,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                style: TextStyleTokens.mainTitle
                    .copyWith(fontSize: Dimensions.sizeXL),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PokemonButton(
                text: Strings.backButton,
                onTap: () {
                  clearSearchField();
                  pokemonListCubit.searchCubit.clearSearch();
                },
              ),
              PokemonButton(
                text: Strings.goToDetailsButton,
                onTap: () => context.router.push(
                  PokemonDetailsRoute(pokemonDetails: pokemonDetails),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
