import 'package:freezed_annotation/freezed_annotation.dart';

part 'flavor_text.freezed.dart';
part 'flavor_text.g.dart';

@freezed
class FlavorText with _$FlavorText {
  const FlavorText._();

  const factory FlavorText({
    required FlavorTextObject flavorText,
  }) = _FlavorText;

  factory FlavorText.fromJson(Map<String, dynamic> json) =>
      _$FlavorTextFromJson(json);
}

@freezed
class FlavorTextObject with _$FlavorTextObject {
  const FlavorTextObject._();

  const factory FlavorTextObject({
    required String flavorText,
  }) = _FlavorTextObject;

  factory FlavorTextObject.fromJson(Map<String, dynamic> json) =>
      _$FlavorTextObjectFromJson(json);
}
