import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/flavour_text/flavor_text.dart';

part 'pokemon_species.freezed.dart';
part 'pokemon_species.g.dart';

@freezed
class PokemonSpecies with _$PokemonSpecies {
  const PokemonSpecies._();

  const factory PokemonSpecies({
    required List<FlavorTextEntry> flavorTextEntries,
  }) = _PokemonSpecies;

  factory PokemonSpecies.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesFromJson(json);
}
