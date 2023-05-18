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
  LanguageObject get language => throw _privateConstructorUsedError;

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
  $Res call({String flavorText, LanguageObject language});

  $LanguageObjectCopyWith<$Res> get language;
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
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      flavorText: null == flavorText
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageObject,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageObjectCopyWith<$Res> get language {
    return $LanguageObjectCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
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
  $Res call({String flavorText, LanguageObject language});

  @override
  $LanguageObjectCopyWith<$Res> get language;
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
    Object? language = null,
  }) {
    return _then(_$_FlavorTextEntry(
      flavorText: null == flavorText
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageObject,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FlavorTextEntry extends _FlavorTextEntry {
  const _$_FlavorTextEntry({required this.flavorText, required this.language})
      : super._();

  factory _$_FlavorTextEntry.fromJson(Map<String, dynamic> json) =>
      _$$_FlavorTextEntryFromJson(json);

  @override
  final String flavorText;
  @override
  final LanguageObject language;

  @override
  String toString() {
    return 'FlavorTextEntry(flavorText: $flavorText, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlavorTextEntry &&
            (identical(other.flavorText, flavorText) ||
                other.flavorText == flavorText) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, flavorText, language);

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
  const factory _FlavorTextEntry(
      {required final String flavorText,
      required final LanguageObject language}) = _$_FlavorTextEntry;
  const _FlavorTextEntry._() : super._();

  factory _FlavorTextEntry.fromJson(Map<String, dynamic> json) =
      _$_FlavorTextEntry.fromJson;

  @override
  String get flavorText;
  @override
  LanguageObject get language;
  @override
  @JsonKey(ignore: true)
  _$$_FlavorTextEntryCopyWith<_$_FlavorTextEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

LanguageObject _$LanguageObjectFromJson(Map<String, dynamic> json) {
  return _LanguageObject.fromJson(json);
}

/// @nodoc
mixin _$LanguageObject {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageObjectCopyWith<LanguageObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageObjectCopyWith<$Res> {
  factory $LanguageObjectCopyWith(
          LanguageObject value, $Res Function(LanguageObject) then) =
      _$LanguageObjectCopyWithImpl<$Res, LanguageObject>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$LanguageObjectCopyWithImpl<$Res, $Val extends LanguageObject>
    implements $LanguageObjectCopyWith<$Res> {
  _$LanguageObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LanguageObjectCopyWith<$Res>
    implements $LanguageObjectCopyWith<$Res> {
  factory _$$_LanguageObjectCopyWith(
          _$_LanguageObject value, $Res Function(_$_LanguageObject) then) =
      __$$_LanguageObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_LanguageObjectCopyWithImpl<$Res>
    extends _$LanguageObjectCopyWithImpl<$Res, _$_LanguageObject>
    implements _$$_LanguageObjectCopyWith<$Res> {
  __$$_LanguageObjectCopyWithImpl(
      _$_LanguageObject _value, $Res Function(_$_LanguageObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_LanguageObject(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LanguageObject extends _LanguageObject {
  const _$_LanguageObject({required this.name}) : super._();

  factory _$_LanguageObject.fromJson(Map<String, dynamic> json) =>
      _$$_LanguageObjectFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'LanguageObject(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageObject &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguageObjectCopyWith<_$_LanguageObject> get copyWith =>
      __$$_LanguageObjectCopyWithImpl<_$_LanguageObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguageObjectToJson(
      this,
    );
  }
}

abstract class _LanguageObject extends LanguageObject {
  const factory _LanguageObject({required final String name}) =
      _$_LanguageObject;
  const _LanguageObject._() : super._();

  factory _LanguageObject.fromJson(Map<String, dynamic> json) =
      _$_LanguageObject.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageObjectCopyWith<_$_LanguageObject> get copyWith =>
      throw _privateConstructorUsedError;
}
