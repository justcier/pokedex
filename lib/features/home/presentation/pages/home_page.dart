import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_rest/common/widgets/common_scaffold.dart';
import 'package:pokedex_rest/core/strings/strings.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon/pokemon.dart';
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
  final PokemonListCubit cubit = getIt<PokemonListCubit>();

  @override
  void initState() {
    super.initState();
    cubit.getAllPokemon();
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: Center(
        child: BlocBuilder<PokemonListCubit, PokemonListState>(
          bloc: cubit,
          builder: (_, PokemonListState state) {
            final List<Pokemon>? results = state.pokemonList?.results;

            if (results == null) {
              return const CircularProgressIndicator();
            }

            return PokemonListWidget(results: results);
          },
        ),
      ),
      title: Strings.appBarHomePageTitle,
    );
  }
}
