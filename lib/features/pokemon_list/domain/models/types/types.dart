import 'package:freezed_annotation/freezed_annotation.dart';

part 'types.freezed.dart';
part 'types.g.dart';

@freezed
class Type with _$Type {
  const Type._();

  const factory Type({
    required TypeObject type,
  }) = _Type;

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);
}

@freezed
class TypeObject with _$TypeObject {
  const TypeObject._();

  const factory TypeObject({
    required String name,
  }) = _TypeObject;

  factory TypeObject.fromJson(Map<String, dynamic> json) =>
      _$TypeObjectFromJson(json);
}
