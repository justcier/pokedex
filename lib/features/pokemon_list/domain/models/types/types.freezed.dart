// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Type _$TypeFromJson(Map<String, dynamic> json) {
  return _Type.fromJson(json);
}

/// @nodoc
mixin _$Type {
  TypeObject get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeCopyWith<Type> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeCopyWith<$Res> {
  factory $TypeCopyWith(Type value, $Res Function(Type) then) =
      _$TypeCopyWithImpl<$Res, Type>;
  @useResult
  $Res call({TypeObject type});

  $TypeObjectCopyWith<$Res> get type;
}

/// @nodoc
class _$TypeCopyWithImpl<$Res, $Val extends Type>
    implements $TypeCopyWith<$Res> {
  _$TypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeObject,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeObjectCopyWith<$Res> get type {
    return $TypeObjectCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TypeCopyWith<$Res> implements $TypeCopyWith<$Res> {
  factory _$$_TypeCopyWith(_$_Type value, $Res Function(_$_Type) then) =
      __$$_TypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TypeObject type});

  @override
  $TypeObjectCopyWith<$Res> get type;
}

/// @nodoc
class __$$_TypeCopyWithImpl<$Res> extends _$TypeCopyWithImpl<$Res, _$_Type>
    implements _$$_TypeCopyWith<$Res> {
  __$$_TypeCopyWithImpl(_$_Type _value, $Res Function(_$_Type) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_Type(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeObject,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Type extends _Type {
  const _$_Type({required this.type}) : super._();

  factory _$_Type.fromJson(Map<String, dynamic> json) => _$$_TypeFromJson(json);

  @override
  final TypeObject type;

  @override
  String toString() {
    return 'Type(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Type &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeCopyWith<_$_Type> get copyWith =>
      __$$_TypeCopyWithImpl<_$_Type>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypeToJson(
      this,
    );
  }
}

abstract class _Type extends Type {
  const factory _Type({required final TypeObject type}) = _$_Type;
  const _Type._() : super._();

  factory _Type.fromJson(Map<String, dynamic> json) = _$_Type.fromJson;

  @override
  TypeObject get type;
  @override
  @JsonKey(ignore: true)
  _$$_TypeCopyWith<_$_Type> get copyWith => throw _privateConstructorUsedError;
}

TypeObject _$TypeObjectFromJson(Map<String, dynamic> json) {
  return _TypeObject.fromJson(json);
}

/// @nodoc
mixin _$TypeObject {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeObjectCopyWith<TypeObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeObjectCopyWith<$Res> {
  factory $TypeObjectCopyWith(
          TypeObject value, $Res Function(TypeObject) then) =
      _$TypeObjectCopyWithImpl<$Res, TypeObject>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$TypeObjectCopyWithImpl<$Res, $Val extends TypeObject>
    implements $TypeObjectCopyWith<$Res> {
  _$TypeObjectCopyWithImpl(this._value, this._then);

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
abstract class _$$_TypeObjectCopyWith<$Res>
    implements $TypeObjectCopyWith<$Res> {
  factory _$$_TypeObjectCopyWith(
          _$_TypeObject value, $Res Function(_$_TypeObject) then) =
      __$$_TypeObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_TypeObjectCopyWithImpl<$Res>
    extends _$TypeObjectCopyWithImpl<$Res, _$_TypeObject>
    implements _$$_TypeObjectCopyWith<$Res> {
  __$$_TypeObjectCopyWithImpl(
      _$_TypeObject _value, $Res Function(_$_TypeObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_TypeObject(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TypeObject extends _TypeObject {
  const _$_TypeObject({required this.name}) : super._();

  factory _$_TypeObject.fromJson(Map<String, dynamic> json) =>
      _$$_TypeObjectFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'TypeObject(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeObject &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeObjectCopyWith<_$_TypeObject> get copyWith =>
      __$$_TypeObjectCopyWithImpl<_$_TypeObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypeObjectToJson(
      this,
    );
  }
}

abstract class _TypeObject extends TypeObject {
  const factory _TypeObject({required final String name}) = _$_TypeObject;
  const _TypeObject._() : super._();

  factory _TypeObject.fromJson(Map<String, dynamic> json) =
      _$_TypeObject.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_TypeObjectCopyWith<_$_TypeObject> get copyWith =>
      throw _privateConstructorUsedError;
}
