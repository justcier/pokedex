import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/sprites/sprites.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/stats/stats.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/types/types.dart';

part 'pokemon_details.freezed.dart';
part 'pokemon_details.g.dart';

@freezed
class PokemonDetails with _$PokemonDetails {
  const PokemonDetails._();

  const factory PokemonDetails({
    required String name,
    required int id,
    required int weight,
    required int height,
    required int baseExperience,
    required Sprites sprites,
    required List<Type> types,
    required List<Stat> stats,
  }) = _PokemonDetails;

  factory PokemonDetails.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsFromJson(json);
}
