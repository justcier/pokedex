// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flavor_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlavorTextEntry _$FlavorTextEntryFromJson(Map<String, dynamic> json) {
  return _FlavorTextEntry.fromJson(json);
}

/// @nodoc
mixin _$FlavorTextEntry {
  String get flavorText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlavorTextEntryCopyWith<FlavorTextEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlavorTextEntryCopyWith<$Res> {
  factory $FlavorTextEntryCopyWith(
          FlavorTextEntry value, $Res Function(FlavorTextEntry) then) =
      _$FlavorTextEntryCopyWithImpl<$Res, FlavorTextEntry>;
  @useResult
  $Res call({String flavorText});
}

/// @nodoc
class _$FlavorTextEntryCopyWithImpl<$Res, $Val extends FlavorTextEntry>
    implements $FlavorTextEntryCopyWith<$Res> {
  _$FlavorTextEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorText = null,
  }) {
    return _then(_value.copyWith(
      flavorText: null == flavorText
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FlavorTextEntryCopyWith<$Res>
    implements $FlavorTextEntryCopyWith<$Res> {
  factory _$$_FlavorTextEntryCopyWith(
          _$_FlavorTextEntry value, $Res Function(_$_FlavorTextEntry) then) =
      __$$_FlavorTextEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String flavorText});
}

/// @nodoc
class __$$_FlavorTextEntryCopyWithImpl<$Res>
    extends _$FlavorTextEntryCopyWithImpl<$Res, _$_FlavorTextEntry>
    implements _$$_FlavorTextEntryCopyWith<$Res> {
  __$$_FlavorTextEntryCopyWithImpl(
      _$_FlavorTextEntry _value, $Res Function(_$_FlavorTextEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorText = null,
  }) {
    return _then(_$_FlavorTextEntry(
      flavorText: null == flavorText
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FlavorTextEntry extends _FlavorTextEntry {
  const _$_FlavorTextEntry({required this.flavorText}) : super._();

  factory _$_FlavorTextEntry.fromJson(Map<String, dynamic> json) =>
      _$$_FlavorTextEntryFromJson(json);

  @override
  final String flavorText;

  @override
  String toString() {
    return 'FlavorTextEntry(flavorText: $flavorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlavorTextEntry &&
            (identical(other.flavorText, flavorText) ||
                other.flavorText == flavorText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, flavorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlavorTextEntryCopyWith<_$_FlavorTextEntry> get copyWith =>
      __$$_FlavorTextEntryCopyWithImpl<_$_FlavorTextEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlavorTextEntryToJson(
      this,
    );
  }
}

abstract class _FlavorTextEntry extends FlavorTextEntry {
  const factory _FlavorTextEntry({required final String flavorText}) =
      _$_FlavorTextEntry;
  const _FlavorTextEntry._() : super._();

  factory _FlavorTextEntry.fromJson(Map<String, dynamic> json) =
      _$_FlavorTextEntry.fromJson;

  @override
  String get flavorText;
  @override
  @JsonKey(ignore: true)
  _$$_FlavorTextEntryCopyWith<_$_FlavorTextEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
