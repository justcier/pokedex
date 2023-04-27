import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_cubit.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_state.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/style/color_tokens.dart';

class FavouriteIcon extends StatelessWidget {
  final PokemonDetails pokemonDetails;
  final EdgeInsetsGeometry? padding;

  const FavouriteIcon({
    required this.pokemonDetails,
    this.padding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouritesCubit, FavouritesState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => context
              .read<FavouritesCubit>()
              .toggleFavouriteState(pokemonDetails),
          child: Container(
            alignment: Alignment.topLeft,
            padding: padding,
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
          ),
        );
      },
    );
  }
}
