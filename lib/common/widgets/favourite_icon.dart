import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_rest/common/asset_paths.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_cubit.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_state.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';

class FavouriteIcon extends StatelessWidget {
  final PokemonDetails pokemonDetails;
  final double? height;

  const FavouriteIcon({
    required this.pokemonDetails,
    this.height,
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
          child: SizedBox(
            height: height,
            child: AnimatedCrossFade(
              duration: const Duration(milliseconds: 350),
              firstChild:
                  const Image(image: AssetImage(AssetPaths.pokeballIconColor)),
              secondChild: const Opacity(
                opacity: 0.2,
                child: Image(
                  image: AssetImage(AssetPaths.pokeballIconColor),
                ),
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
