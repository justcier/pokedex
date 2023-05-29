import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/search_pokemon_by_name_use_case.dart';
import 'package:pokedex_rest/features/search/presentation/cubits/search_state.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchState.initial());

  Future<void> searchPokemonByName(String name) async {
    emit(state.copyWith(status: SearchStateStatus.loading));
    print(name);

    final pokemonSearchedByName =
        await (await getIt.getAsync<SearchPokemonByNameUseCase>()).call(name);

    print(pokemonSearchedByName);
    emit(state.copyWith(
      status: SearchStateStatus.loaded,
      pokemonDetails: pokemonSearchedByName,
    ));
  }
}