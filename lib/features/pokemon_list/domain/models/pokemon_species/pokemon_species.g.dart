// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_species.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonSpecies _$$_PokemonSpeciesFromJson(Map<String, dynamic> json) =>
    _$_PokemonSpecies(
      id: json['id'] as int,
      flavorText:
          FlavorText.fromJson(json['flavor_text'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonSpeciesToJson(_$_PokemonSpecies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'flavor_text': instance.flavorText,
    };
