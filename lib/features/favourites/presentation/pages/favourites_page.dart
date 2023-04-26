import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_rest/common/widgets/common_scaffold.dart';
import 'package:pokedex_rest/core/strings/strings.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_cubit.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_state.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/widgets/pokemon_list_widget.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

@RoutePage()
class FavouritesPage extends StatelessWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appBar: AppBar(
        title: Text(
          Strings.bottomNavigationBarOption2,
          style: TextStyleTokens.mainTitleWhite,
        ),
        backgroundColor: ColorTokens.secondaryColor,
      ),
      body: BlocBuilder<FavouritesCubit, FavouritesState>(
        builder: (context, state) {
          print(state.favouritesList);
          return PokemonListWidget(
            pokemonDetailsList: state.favouritesList,
            gridViewScrollController: ScrollController(),
            isLoading: false,
            onDoubleTap: (pokemonDetails) => context
                .read<FavouritesCubit>()
                .toggleFavouriteState(pokemonDetails),
          );
        },
      ),
    );
  }
}
