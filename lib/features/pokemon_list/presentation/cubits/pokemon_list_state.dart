import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_list/pokemon_list.dart';

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
    PokemonList? pokemonList,
    List<PokemonDetails>? pokemonDetailsList,
  }) = _PokemonListState;

  factory PokemonListState.initial() =>
      const PokemonListState(status: PokemonListStateStatus.idle);

  bool get isLoading => status == PokemonListStateStatus.loading;
  bool get isLoaded => status == PokemonListStateStatus.loaded;
}
