import 'package:freezed_annotation/freezed_annotation.dart';

part 'flavor_text.freezed.dart';
part 'flavor_text.g.dart';

@freezed
class FlavorTextEntry with _$FlavorTextEntry {
  const FlavorTextEntry._();

  const factory FlavorTextEntry({
    required String flavorText,
    required LanguageObject language,
  }) = _FlavorTextEntry;

  factory FlavorTextEntry.fromJson(Map<String, dynamic> json) =>
      _$FlavorTextEntryFromJson(json);
}

@freezed
class LanguageObject with _$LanguageObject {
  const LanguageObject._();

  const factory LanguageObject({
    required String name,
  }) = _LanguageObject;

  factory LanguageObject.fromJson(Map<String, dynamic> json) =>
      _$LanguageObjectFromJson(json);
}
