import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/sprites/sprites.dart';

part 'pokemon_details.freezed.dart';
part 'pokemon_details.g.dart';

@freezed
class PokemonDetails with _$PokemonDetails {
  const PokemonDetails._();

  const factory PokemonDetails({
    required String name,
    required int id,
    required Sprites sprites,
  }) = _PokemonDetails;

  factory PokemonDetails.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsFromJson(json);
}
