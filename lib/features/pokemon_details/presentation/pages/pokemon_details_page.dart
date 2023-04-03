import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_rest/common/widgets/common_scaffold.dart';
import 'package:pokedex_rest/core/extensions/build_context_extensions.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/widgets/pokemon_details_app_bar.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/pokemon_types_to_color_map.dart';
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: pokemonDetails.types.map((typeObject) {
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
            ),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
