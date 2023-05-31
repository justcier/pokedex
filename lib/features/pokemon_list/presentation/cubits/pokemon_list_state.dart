import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/search/presentation/cubits/search_state.dart';

part 'pokemon_list_state.freezed.dart';

enum PokemonListStateStatus {
  idle,
  loading,
  loaded,
  error,
}

@freezed
class PokemonListState with _$PokemonListState {
  const PokemonListState._();

  const factory PokemonListState({
    required PokemonListStateStatus status,
    List<PokemonDetails>? pokemonDetailsList,
    PokemonDetails? searchedPokemonDetails,
    SearchStateStatus? searchState,
    int? currentPage,
  }) = _PokemonListState;

  factory PokemonListState.initial() =>
      const PokemonListState(status: PokemonListStateStatus.idle);

  bool get isLoading => status == PokemonListStateStatus.loading;
  bool get isLoaded => status == PokemonListStateStatus.loaded;
}
