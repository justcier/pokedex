import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_list/pokemon_list.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_all_pokemon_use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_pokemon_details_use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_state.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

@injectable
class PokemonListCubit extends Cubit<PokemonListState> {
  PokemonListCubit() : super(PokemonListState.initial());

  Future<void> getAllPokemon() async {
    emit(state.copyWith(status: PokemonListStateStatus.loading));

    final PokemonList pokemonList = await getIt<GetAllPokemonUseCase>().call();

    emit(state.copyWith(
      status: PokemonListStateStatus.loaded,
      pokemonList: pokemonList,
    ));
  }

  Future<void> getPokemonDetailsList() async {
    emit(state.copyWith(status: PokemonListStateStatus.loading));

    final List<Future<PokemonDetails>> pokemonDetailsFutureList = [];

    for (int i = 1; i < 21; i++) {
      // TODO Create lazy loading and find solution for fetching all pokemon
      final pokemonDetailsFuture = getIt<GetPokemonDetailsUseCase>().call('$i');
      pokemonDetailsFutureList.add(pokemonDetailsFuture);
    }

    final List<PokemonDetails> pokemonDetailsList =
        await Future.wait(pokemonDetailsFutureList);

    emit(state.copyWith(
      status: PokemonListStateStatus.loaded,
      pokemonDetailsList: pokemonDetailsList,
    ));
  }
}
