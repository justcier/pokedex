import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_cubit.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_state.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/style/dimensions.dart';

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
            child: SizedBox(
              height: Dimensions.sizeXXL,
              child: AnimatedCrossFade(
                duration: const Duration(milliseconds: 350),
                firstChild: const Image(
                  image: AssetImage("assets/Poké_Ball_icon.png"),
                ),
                secondChild: const Opacity(
                  opacity: Dimensions.sizeXS,
                  child: Image(
                    image: AssetImage(
                      "assets/Poké_Ball_icon.png",
                    ),
                  ),
                ),
                crossFadeState: state.favouritesList.contains(pokemonDetails)
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
            ),
          ),
        );
      },
    );
  }
}
