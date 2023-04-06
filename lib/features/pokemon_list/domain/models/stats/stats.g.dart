// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Stat _$$_StatFromJson(Map<String, dynamic> json) => _$_Stat(
      baseStat: json['base_stat'] as int,
      stat: StatObject.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StatToJson(_$_Stat instance) => <String, dynamic>{
      'base_stat': instance.baseStat,
      'stat': instance.stat,
    };

_$_StatObject _$$_StatObjectFromJson(Map<String, dynamic> json) =>
    _$_StatObject(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_StatObjectToJson(_$_StatObject instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
