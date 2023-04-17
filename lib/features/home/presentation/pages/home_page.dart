import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_rest/common/widgets/common_scaffold.dart';
import 'package:pokedex_rest/common/widgets/pokeball_loader.dart';
import 'package:pokedex_rest/core/strings/strings.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_cubit.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_cubit.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_state.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/widgets/pokemon_list_widget.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';
import 'package:pokedex_rest/style/color_tokens.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PokemonListCubit _pokemonListcubit = getIt<PokemonListCubit>();
  final FavouritesCubit _favouritesCubit = getIt<FavouritesCubit>();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _pokemonListcubit.getPokemonDetailsList();
    _scrollController.addListener(_fetchMoreDataListener);
  }

  @override
  void dispose() {
    _pokemonListcubit.close();
    _favouritesCubit.close();
    _scrollController.removeListener(_fetchMoreDataListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appBar: AppBar(
        title: const Text(Strings.appBarHomePageTitle),
        backgroundColor: ColorTokens.secondaryColor,
      ),
      body: Center(
        child: BlocBuilder<PokemonListCubit, PokemonListState>(
          bloc: _pokemonListcubit,
          builder: (_, PokemonListState state) {
            final List<PokemonDetails>? pokemonDetailsList =
                state.pokemonDetailsList;

            if (state.isLoading && (pokemonDetailsList?.isEmpty ?? true)) {
              return const PokeballLoader();
            } else if (pokemonDetailsList == null) {
              return const SizedBox.shrink();
            }

            return PokemonListWidget(
              pokemonDetailsList: pokemonDetailsList,
              gridViewScrollController: _scrollController,
              isLoading: state.isLoading,
              onDoubleTap: (pokemonDetails) =>
                  _favouritesCubit.toggleFavouriteState(pokemonDetails),
            );
          },
        ),
      ),
    );
  }

  void _fetchMoreDataListener() {
    if (_scrollController.position.extentAfter == 0) {
      _pokemonListcubit.fetchNextPage();
    }
  }
}
