// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flavor_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlavorTextEntry _$$_FlavorTextEntryFromJson(Map<String, dynamic> json) =>
    _$_FlavorTextEntry(
      flavorText: json['flavor_text'] as String,
      language:
          LanguageObject.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FlavorTextEntryToJson(_$_FlavorTextEntry instance) =>
    <String, dynamic>{
      'flavor_text': instance.flavorText,
      'language': instance.language,
    };

_$_LanguageObject _$$_LanguageObjectFromJson(Map<String, dynamic> json) =>
    _$_LanguageObject(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_LanguageObjectToJson(_$_LanguageObject instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
