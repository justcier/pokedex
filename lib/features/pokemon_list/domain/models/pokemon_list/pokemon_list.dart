import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon/pokemon.dart';

part 'pokemon_list.freezed.dart';
part 'pokemon_list.g.dart';

@freezed
class PokemonList with _$PokemonList {
  const PokemonList._();

  const factory PokemonList({
    required List<Pokemon> results,
  }) = _PokemonList;

  factory PokemonList.fromJson(Map<String, dynamic> json) =>
      _$PokemonListFromJson(json);
}
