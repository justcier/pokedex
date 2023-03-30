import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_rest/common/widgets/common_scaffold.dart';
import 'package:pokedex_rest/core/extensions/build_context_extensions.dart';
import 'package:pokedex_rest/core/strings/strings.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/dimensions.dart';

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
      body: Container(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(context.screenHeight / 3),
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: _borderRadius,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(Strings.appBarHomePageTitle),
              Text('${pokemonDetails.id}'),
            ],
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: const Color(0xff7c94b6),
              image: DecorationImage(
                image: NetworkImage(pokemonDetails.sprites.frontDefault),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          backgroundColor: ColorTokens.secondaryColor,
        ),
      ),
    );
  }

  BorderRadius get _borderRadius =>
      const BorderRadius.vertical(bottom: Radius.circular(Dimensions.sizeXXXL));
}
