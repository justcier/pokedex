// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonList _$PokemonListFromJson(Map<String, dynamic> json) {
  return _PokemonList.fromJson(json);
}

/// @nodoc
mixin _$PokemonList {
  List<Pokemon> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonListCopyWith<PokemonList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListCopyWith<$Res> {
  factory $PokemonListCopyWith(
          PokemonList value, $Res Function(PokemonList) then) =
      _$PokemonListCopyWithImpl<$Res, PokemonList>;
  @useResult
  $Res call({List<Pokemon> data});
}

/// @nodoc
class _$PokemonListCopyWithImpl<$Res, $Val extends PokemonList>
    implements $PokemonListCopyWith<$Res> {
  _$PokemonListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonListCopyWith<$Res>
    implements $PokemonListCopyWith<$Res> {
  factory _$$_PokemonListCopyWith(
          _$_PokemonList value, $Res Function(_$_PokemonList) then) =
      __$$_PokemonListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pokemon> data});
}

/// @nodoc
class __$$_PokemonListCopyWithImpl<$Res>
    extends _$PokemonListCopyWithImpl<$Res, _$_PokemonList>
    implements _$$_PokemonListCopyWith<$Res> {
  __$$_PokemonListCopyWithImpl(
      _$_PokemonList _value, $Res Function(_$_PokemonList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_PokemonList(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonList extends _PokemonList {
  const _$_PokemonList({required final List<Pokemon> data})
      : _data = data,
        super._();

  factory _$_PokemonList.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonListFromJson(json);

  final List<Pokemon> _data;
  @override
  List<Pokemon> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PokemonList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonList &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonListCopyWith<_$_PokemonList> get copyWith =>
      __$$_PokemonListCopyWithImpl<_$_PokemonList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonListToJson(
      this,
    );
  }
}

abstract class _PokemonList extends PokemonList {
  const factory _PokemonList({required final List<Pokemon> data}) =
      _$_PokemonList;
  const _PokemonList._() : super._();

  factory _PokemonList.fromJson(Map<String, dynamic> json) =
      _$_PokemonList.fromJson;

  @override
  List<Pokemon> get data;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonListCopyWith<_$_PokemonList> get copyWith =>
      throw _privateConstructorUsedError;
}
