// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Stat _$StatFromJson(Map<String, dynamic> json) {
  return _Stat.fromJson(json);
}

/// @nodoc
mixin _$Stat {
  int get baseStat => throw _privateConstructorUsedError;
  StatObject get stat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatCopyWith<Stat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatCopyWith<$Res> {
  factory $StatCopyWith(Stat value, $Res Function(Stat) then) =
      _$StatCopyWithImpl<$Res, Stat>;
  @useResult
  $Res call({int baseStat, StatObject stat});

  $StatObjectCopyWith<$Res> get stat;
}

/// @nodoc
class _$StatCopyWithImpl<$Res, $Val extends Stat>
    implements $StatCopyWith<$Res> {
  _$StatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? stat = null,
  }) {
    return _then(_value.copyWith(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as StatObject,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatObjectCopyWith<$Res> get stat {
    return $StatObjectCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StatCopyWith<$Res> implements $StatCopyWith<$Res> {
  factory _$$_StatCopyWith(_$_Stat value, $Res Function(_$_Stat) then) =
      __$$_StatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int baseStat, StatObject stat});

  @override
  $StatObjectCopyWith<$Res> get stat;
}

/// @nodoc
class __$$_StatCopyWithImpl<$Res> extends _$StatCopyWithImpl<$Res, _$_Stat>
    implements _$$_StatCopyWith<$Res> {
  __$$_StatCopyWithImpl(_$_Stat _value, $Res Function(_$_Stat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? stat = null,
  }) {
    return _then(_$_Stat(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as StatObject,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stat extends _Stat {
  const _$_Stat({required this.baseStat, required this.stat}) : super._();

  factory _$_Stat.fromJson(Map<String, dynamic> json) => _$$_StatFromJson(json);

  @override
  final int baseStat;
  @override
  final StatObject stat;

  @override
  String toString() {
    return 'Stat(baseStat: $baseStat, stat: $stat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stat &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, baseStat, stat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatCopyWith<_$_Stat> get copyWith =>
      __$$_StatCopyWithImpl<_$_Stat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatToJson(
      this,
    );
  }
}

abstract class _Stat extends Stat {
  const factory _Stat(
      {required final int baseStat, required final StatObject stat}) = _$_Stat;
  const _Stat._() : super._();

  factory _Stat.fromJson(Map<String, dynamic> json) = _$_Stat.fromJson;

  @override
  int get baseStat;
  @override
  StatObject get stat;
  @override
  @JsonKey(ignore: true)
  _$$_StatCopyWith<_$_Stat> get copyWith => throw _privateConstructorUsedError;
}

StatObject _$StatObjectFromJson(Map<String, dynamic> json) {
  return _StatObject.fromJson(json);
}

/// @nodoc
mixin _$StatObject {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatObjectCopyWith<StatObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatObjectCopyWith<$Res> {
  factory $StatObjectCopyWith(
          StatObject value, $Res Function(StatObject) then) =
      _$StatObjectCopyWithImpl<$Res, StatObject>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$StatObjectCopyWithImpl<$Res, $Val extends StatObject>
    implements $StatObjectCopyWith<$Res> {
  _$StatObjectCopyWithImpl(this._value, this._then);

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
abstract class _$$_StatObjectCopyWith<$Res>
    implements $StatObjectCopyWith<$Res> {
  factory _$$_StatObjectCopyWith(
          _$_StatObject value, $Res Function(_$_StatObject) then) =
      __$$_StatObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_StatObjectCopyWithImpl<$Res>
    extends _$StatObjectCopyWithImpl<$Res, _$_StatObject>
    implements _$$_StatObjectCopyWith<$Res> {
  __$$_StatObjectCopyWithImpl(
      _$_StatObject _value, $Res Function(_$_StatObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_StatObject(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatObject extends _StatObject {
  const _$_StatObject({required this.name}) : super._();

  factory _$_StatObject.fromJson(Map<String, dynamic> json) =>
      _$$_StatObjectFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'StatObject(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatObject &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatObjectCopyWith<_$_StatObject> get copyWith =>
      __$$_StatObjectCopyWithImpl<_$_StatObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatObjectToJson(
      this,
    );
  }
}

abstract class _StatObject extends StatObject {
  const factory _StatObject({required final String name}) = _$_StatObject;
  const _StatObject._() : super._();

  factory _StatObject.fromJson(Map<String, dynamic> json) =
      _$_StatObject.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_StatObjectCopyWith<_$_StatObject> get copyWith =>
      throw _privateConstructorUsedError;
}
