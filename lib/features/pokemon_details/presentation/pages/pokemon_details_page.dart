import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_rest/common/widgets/common_scaffold.dart';
import 'package:pokedex_rest/common/widgets/favourite_icon.dart';
import 'package:pokedex_rest/core/extensions/build_context_extensions.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/widgets/pokemon_details_app_bar.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/widgets/pokemon_details_body_attributes_row.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/widgets/pokemon_details_stats_container.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/widgets/pokemon_details_types_row.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

@RoutePage()
class PokemonDetailsPage extends StatelessWidget {
  final PokemonDetails pokemonDetails;

  const PokemonDetailsPage({
    required this.pokemonDetails,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(context.screenHeight / 3),
        child: PokemonDetailsAppBar(pokemonDetails: pokemonDetails),
      ),
      body: Container(
        margin: const EdgeInsets.all(Dimensions.sizeL),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(Dimensions.sizeXXL),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: Dimensions.sizeXXXL),
                  Text(
                    pokemonDetails.name,
                    style: TextStyleTokens.mainTitleBig,
                  ),
                  FavouriteIcon(pokemonDetails: pokemonDetails),
                ],
              ),
            ),
            PokemonDetailsTypesRow(types: pokemonDetails.types),
            const SizedBox(height: Dimensions.sizeXXL),
            PokemonDetailsBodyAttributesRow(
              weight: pokemonDetails.weight,
              height: pokemonDetails.height,
            ),
            const SizedBox(height: Dimensions.sizeXXL),
            PokemonDetailsStatsContainer(
              stats: pokemonDetails.stats,
              baseExperience: pokemonDetails.baseExperience,
            ),
          ],
        ),
      ),
    );
  }
}
