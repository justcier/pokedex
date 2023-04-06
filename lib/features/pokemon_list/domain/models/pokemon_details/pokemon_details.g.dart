// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonDetails _$$_PokemonDetailsFromJson(Map<String, dynamic> json) =>
    _$_PokemonDetails(
      name: json['name'] as String,
      id: json['id'] as int,
      weight: json['weight'] as int,
      height: json['height'] as int,
      baseExperience: json['base_experience'] as int,
      sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>)
          .map((e) => Type.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => Stat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonDetailsToJson(_$_PokemonDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'weight': instance.weight,
      'height': instance.height,
      'base_experience': instance.baseExperience,
      'sprites': instance.sprites,
      'types': instance.types,
      'stats': instance.stats,
    };
