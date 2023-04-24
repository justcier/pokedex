import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_cubit.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_state.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/dimensions.dart';

class FavouriteIcon extends StatelessWidget {
  final PokemonDetails pokemonDetails;

  const FavouriteIcon({
    required this.pokemonDetails,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouritesCubit, FavouritesState>(
      builder: (context, state) {
        return Container(
          alignment: Alignment.topRight,
          padding: const EdgeInsets.symmetric(
            vertical: Dimensions.sizeL,
            horizontal: Dimensions.sizeXXL,
          ),
          child: AnimatedCrossFade(
            duration: const Duration(milliseconds: 350),
            firstChild: const Icon(
              Icons.favorite,
              color: ColorTokens.primaryColor,
            ),
            secondChild: const Icon(
              Icons.favorite_border,
              color: ColorTokens.darkBackgroundColor,
            ),
            crossFadeState: state.favouritesList.contains(pokemonDetails)
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
          ),
        );
      },
    );
  }
}
