import 'package:flutter/material.dart';
import 'package:pokedex_rest/common/widgets/pokemon_number.dart';
import 'package:pokedex_rest/core/strings/strings.dart';
import 'package:pokedex_rest/common/widgets/pokemon_hero.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/services/color_service/color_service.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

class PokemonDetailsAppBar extends StatefulWidget {
  final PokemonDetails pokemonDetails;

  const PokemonDetailsAppBar({
    required this.pokemonDetails,
    Key? key,
  }) : super(key: key);

  @override
  State<PokemonDetailsAppBar> createState() => _PokemonDetailsAppBarState();
}

class _PokemonDetailsAppBarState extends State<PokemonDetailsAppBar> {
  Color pokemonColor = ColorTokens.secondaryColor;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final color = await getIt<ColorService>().getColorFromImage(
        NetworkImage(widget.pokemonDetails.sprites.frontDefault),
      );

      setState(() => pokemonColor = color);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: RoundedRectangleBorder(
        borderRadius: _borderRadius,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            Strings.appBarHomePageTitle,
            style: TextStyleTokens.mainTitleWhite,
          ),
          PokemonNumber(
            id: widget.pokemonDetails.id,
            style: TextStyleTokens.mainTitleWhite,
          ),
        ],
      ),
      flexibleSpace: AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          borderRadius: _borderRadius,
          color: pokemonColor,
        ),
        child: PokemonHero(
          pokemonId: widget.pokemonDetails.id,
          pokemonImageUrl: widget.pokemonDetails.sprites.frontDefault,
        ),
      ),
      backgroundColor: ColorTokens.secondaryColor,
    );
  }

  BorderRadius get _borderRadius => const BorderRadius.vertical(
      bottom: Radius.circular(Dimensions.sizeXXXXL));
}
