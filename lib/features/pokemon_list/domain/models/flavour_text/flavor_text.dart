import 'package:freezed_annotation/freezed_annotation.dart';

part 'flavor_text.freezed.dart';
part 'flavor_text.g.dart';

@freezed
class FlavorTextEntry with _$FlavorTextEntry {
  const FlavorTextEntry._();

  const factory FlavorTextEntry({
    required String flavorText,
  }) = _FlavorTextEntry;

  factory FlavorTextEntry.fromJson(Map<String, dynamic> json) =>
      _$FlavorTextEntryFromJson(json);
}
