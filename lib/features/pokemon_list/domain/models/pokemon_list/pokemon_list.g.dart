// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonList _$$_PokemonListFromJson(Map<String, dynamic> json) =>
    _$_PokemonList(
      results: (json['results'] as List<dynamic>)
          .map((e) => Pokemon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonListToJson(_$_PokemonList instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
