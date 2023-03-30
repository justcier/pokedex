import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_rest/common/widgets/common_scaffold.dart';
import 'package:pokedex_rest/core/extensions/build_context_extensions.dart';
import 'package:pokedex_rest/core/strings/strings.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/services/color_service/color_service.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/dimensions.dart';

@RoutePage()
class PokemonDetailsPage extends StatefulWidget {
  final PokemonDetails pokemonDetails;

  const PokemonDetailsPage({
    required this.pokemonDetails,
    Key? key,
  }) : super(key: key);

  @override
  State<PokemonDetailsPage> createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState extends State<PokemonDetailsPage> {
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
    final NetworkImage pokemonImage =
        NetworkImage(widget.pokemonDetails.sprites.frontDefault);

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
              Text('${widget.pokemonDetails.id}'),
            ],
          ),
          flexibleSpace: AnimatedContainer(
            duration: const Duration(milliseconds: 450),
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: pokemonColor,
            ),
            child: Hero(
              tag: widget.pokemonDetails.id,
              child: Image(
                image: pokemonImage,
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
