import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';

part 'favourites_state.freezed.dart';

@freezed
class FavouritesState with _$FavouritesState {
  const FavouritesState._();

  const factory FavouritesState({
    @Default([]) List<PokemonDetails> favouritesList,
  }) = _FavouritesState;

  factory FavouritesState.initial() => const FavouritesState();
}
