import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_rest/common/widgets/common_scaffold.dart';
import 'package:pokedex_rest/core/strings/strings.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_cubit.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_state.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/widgets/pokemon_list_widget.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PokemonListCubit _cubit = getIt<PokemonListCubit>();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _cubit.getAllPokemon();
    _cubit.getPokemonDetailsList();

    _scrollController.addListener(_fetchMoreDataListener);
  }

  @override
  void dispose() {
    _cubit.close();
    _scrollController.removeListener(_fetchMoreDataListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: Center(
        child: BlocBuilder<PokemonListCubit, PokemonListState>(
          bloc: _cubit,
          builder: (_, PokemonListState state) {
            final List<PokemonDetails>? pokemonDetailsList =
                state.pokemonDetailsList;

            if (pokemonDetailsList == null) {
              return const CircularProgressIndicator();
            }

            return PokemonListWidget(
              pokemonDetailsList: pokemonDetailsList,
              gridViewScrollController: _scrollController,
              isLoading: state.isLoading,
            );
          },
        ),
      ),
      title: Strings.appBarHomePageTitle,
    );
  }

  void _fetchMoreDataListener() {
    if (_scrollController.position.extentAfter == 0) {
      _cubit.fetchNextPage();
    }
  }
}
