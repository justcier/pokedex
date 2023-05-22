import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_rest/common/widgets/common_scaffold.dart';
import 'package:pokedex_rest/common/widgets/pokeball_loader.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_cubit.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_cubit.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_state.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/widgets/pokemon_list_sliver_app_bar.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/widgets/pokemon_list_widget.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

class PokemonListPage extends StatefulWidget {
  const PokemonListPage({Key? key}) : super(key: key);

  @override
  State<PokemonListPage> createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  final PokemonListCubit _pokemonListCubit = getIt<PokemonListCubit>();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _pokemonListCubit.getPokemonDetailsList();
    _scrollController.addListener(_fetchMoreDataListener);
  }

  @override
  void dispose() {
    _pokemonListCubit.close();
    _scrollController.removeListener(_fetchMoreDataListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: Center(
        child: BlocBuilder<PokemonListCubit, PokemonListState>(
          bloc: _pokemonListCubit,
          builder: (_, PokemonListState state) {
            final List<PokemonDetails>? pokemonDetailsList =
                state.pokemonDetailsList;

            if (state.isLoading && (pokemonDetailsList?.isEmpty ?? true)) {
              return const PokeballLoader();
            } else if (pokemonDetailsList == null) {
              return const SizedBox.shrink();
            }

            return CustomScrollView(slivers: [
              const PokemonListSliverAppBar(
                pinned: true,
                snap: false,
                floating: true,
              ),
              PokemonListWidget(
                pokemonDetailsList: pokemonDetailsList,
                isLoading: state.isLoading,
                onDoubleTap:
                    context.read<FavouritesCubit>().toggleFavouriteState,
              ),
            ]);
          },
        ),
      ),
    );
  }

  void _fetchMoreDataListener() {
    if (_scrollController.position.extentAfter == 0) {
      _pokemonListCubit.fetchNextPage();
    }
  }
}
