import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_list/pokemon_list.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_all_pokemon_use_case.dart';
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
}
