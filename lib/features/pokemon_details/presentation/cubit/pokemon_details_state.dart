import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_details_state.freezed.dart';

enum PokemonDetailsStateStatus {
  idle,
  loading,
  loaded,
  error,
}

@freezed
class PokemonDetailsState with _$PokemonDetailsState {
  const PokemonDetailsState._();

  const factory PokemonDetailsState({
    required PokemonDetailsStateStatus status,
    String? flavorText,
  }) = _PokemonDetailsState;

  factory PokemonDetailsState.initial() =>
      const PokemonDetailsState(status: PokemonDetailsStateStatus.idle);

  bool get isLoading => status == PokemonDetailsStateStatus.loading;
  bool get isLoaded => status == PokemonDetailsStateStatus.loaded;
}
