// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonDetails _$PokemonDetailsFromJson(Map<String, dynamic> json) {
  return _PokemonDetails.fromJson(json);
}

/// @nodoc
mixin _$PokemonDetails {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get baseExperience => throw _privateConstructorUsedError;
  Sprites get sprites => throw _privateConstructorUsedError;
  List<Type> get types => throw _privateConstructorUsedError;
  List<Stat> get stats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDetailsCopyWith<PokemonDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailsCopyWith<$Res> {
  factory $PokemonDetailsCopyWith(
          PokemonDetails value, $Res Function(PokemonDetails) then) =
      _$PokemonDetailsCopyWithImpl<$Res, PokemonDetails>;
  @useResult
  $Res call(
      {String name,
      int id,
      int weight,
      int height,
      int baseExperience,
      Sprites sprites,
      List<Type> types,
      List<Stat> stats});

  $SpritesCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokemonDetailsCopyWithImpl<$Res, $Val extends PokemonDetails>
    implements $PokemonDetailsCopyWith<$Res> {
  _$PokemonDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? weight = null,
    Object? height = null,
    Object? baseExperience = null,
    Object? sprites = null,
    Object? types = null,
    Object? stats = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      baseExperience: null == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Type>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stat>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpritesCopyWith<$Res> get sprites {
    return $SpritesCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonDetailsCopyWith<$Res>
    implements $PokemonDetailsCopyWith<$Res> {
  factory _$$_PokemonDetailsCopyWith(
          _$_PokemonDetails value, $Res Function(_$_PokemonDetails) then) =
      __$$_PokemonDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int id,
      int weight,
      int height,
      int baseExperience,
      Sprites sprites,
      List<Type> types,
      List<Stat> stats});

  @override
  $SpritesCopyWith<$Res> get sprites;
}

/// @nodoc
class __$$_PokemonDetailsCopyWithImpl<$Res>
    extends _$PokemonDetailsCopyWithImpl<$Res, _$_PokemonDetails>
    implements _$$_PokemonDetailsCopyWith<$Res> {
  __$$_PokemonDetailsCopyWithImpl(
      _$_PokemonDetails _value, $Res Function(_$_PokemonDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? weight = null,
    Object? height = null,
    Object? baseExperience = null,
    Object? sprites = null,
    Object? types = null,
    Object? stats = null,
  }) {
    return _then(_$_PokemonDetails(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      baseExperience: null == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Type>,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stat>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonDetails extends _PokemonDetails {
  const _$_PokemonDetails(
      {required this.name,
      required this.id,
      required this.weight,
      required this.height,
      required this.baseExperience,
      required this.sprites,
      required final List<Type> types,
      required final List<Stat> stats})
      : _types = types,
        _stats = stats,
        super._();

  factory _$_PokemonDetails.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonDetailsFromJson(json);

  @override
  final String name;
  @override
  final int id;
  @override
  final int weight;
  @override
  final int height;
  @override
  final int baseExperience;
  @override
  final Sprites sprites;
  final List<Type> _types;
  @override
  List<Type> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<Stat> _stats;
  @override
  List<Stat> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  String toString() {
    return 'PokemonDetails(name: $name, id: $id, weight: $weight, height: $height, baseExperience: $baseExperience, sprites: $sprites, types: $types, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonDetails &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.baseExperience, baseExperience) ||
                other.baseExperience == baseExperience) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._stats, _stats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      id,
      weight,
      height,
      baseExperience,
      sprites,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_stats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonDetailsCopyWith<_$_PokemonDetails> get copyWith =>
      __$$_PokemonDetailsCopyWithImpl<_$_PokemonDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonDetailsToJson(
      this,
    );
  }
}

abstract class _PokemonDetails extends PokemonDetails {
  const factory _PokemonDetails(
      {required final String name,
      required final int id,
      required final int weight,
      required final int height,
      required final int baseExperience,
      required final Sprites sprites,
      required final List<Type> types,
      required final List<Stat> stats}) = _$_PokemonDetails;
  const _PokemonDetails._() : super._();

  factory _PokemonDetails.fromJson(Map<String, dynamic> json) =
      _$_PokemonDetails.fromJson;

  @override
  String get name;
  @override
  int get id;
  @override
  int get weight;
  @override
  int get height;
  @override
  int get baseExperience;
  @override
  Sprites get sprites;
  @override
  List<Type> get types;
  @override
  List<Stat> get stats;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonDetailsCopyWith<_$_PokemonDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
