import 'package:flutter/material.dart';
import 'package:pokedex_rest/common/widgets/pokemon_button.dart';
import 'package:pokedex_rest/core/strings/strings.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_cubit.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

class ErrorViewWidget extends StatelessWidget {
  final PokemonListCubit pokemonListCubit;
  final String errorMessage;
  final VoidCallback onTap;

  const ErrorViewWidget({
    required this.pokemonListCubit,
    required this.errorMessage,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(Dimensions.sizeXXXL),
          child: Text(
            errorMessage,
            style:
                TextStyleTokens.mainTitle.copyWith(fontSize: Dimensions.sizeXL),
          ),
        ),
        PokemonButton(
          text: Strings.backButton,
          onTap: onTap,
        ),
      ],
    );
  }
}
