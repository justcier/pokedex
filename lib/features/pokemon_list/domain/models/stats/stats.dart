import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats.freezed.dart';
part 'stats.g.dart';

@freezed
class Stat with _$Stat {
  const Stat._();

  const factory Stat({
    required int baseStat,
    required StatObject stat,
  }) = _Stat;

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);
}

@freezed
class StatObject with _$StatObject {
  const StatObject._();

  const factory StatObject({
    required String name,
  }) = _StatObject;

  factory StatObject.fromJson(Map<String, dynamic> json) =>
      _$StatObjectFromJson(json);
}
