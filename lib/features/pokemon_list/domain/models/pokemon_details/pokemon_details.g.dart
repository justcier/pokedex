// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonDetails _$$_PokemonDetailsFromJson(Map<String, dynamic> json) =>
    _$_PokemonDetails(
      name: json['name'] as String,
      id: json['id'] as int,
      sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonDetailsToJson(_$_PokemonDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'sprites': instance.sprites,
    };
