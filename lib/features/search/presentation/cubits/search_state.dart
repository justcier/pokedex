import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';

part 'search_state.freezed.dart';

enum SearchStateStatus {
  idle,
  loading,
  loaded,
  error,
}

@freezed
class SearchState with _$SearchState {
  const SearchState._();

  const factory SearchState({
    required SearchStateStatus status,
    PokemonDetails? pokemonDetails,
  }) = _SearchState;

  factory SearchState.initial() =>
      const SearchState(status: SearchStateStatus.idle);

  bool get isLoading => status == SearchStateStatus.loading;
  bool get isLoaded => status == SearchStateStatus.loaded;
}
