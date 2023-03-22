// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonListState {
  PokemonListStateStatus get status => throw _privateConstructorUsedError;
  PokemonList? get pokemonList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonListStateCopyWith<PokemonListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListStateCopyWith<$Res> {
  factory $PokemonListStateCopyWith(
          PokemonListState value, $Res Function(PokemonListState) then) =
      _$PokemonListStateCopyWithImpl<$Res, PokemonListState>;
  @useResult
  $Res call({PokemonListStateStatus status, PokemonList? pokemonList});

  $PokemonListCopyWith<$Res>? get pokemonList;
}

/// @nodoc
class _$PokemonListStateCopyWithImpl<$Res, $Val extends PokemonListState>
    implements $PokemonListStateCopyWith<$Res> {
  _$PokemonListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pokemonList = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PokemonListStateStatus,
      pokemonList: freezed == pokemonList
          ? _value.pokemonList
          : pokemonList // ignore: cast_nullable_to_non_nullable
              as PokemonList?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonListCopyWith<$Res>? get pokemonList {
    if (_value.pokemonList == null) {
      return null;
    }

    return $PokemonListCopyWith<$Res>(_value.pokemonList!, (value) {
      return _then(_value.copyWith(pokemonList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonListStateCopyWith<$Res>
    implements $PokemonListStateCopyWith<$Res> {
  factory _$$_PokemonListStateCopyWith(
          _$_PokemonListState value, $Res Function(_$_PokemonListState) then) =
      __$$_PokemonListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PokemonListStateStatus status, PokemonList? pokemonList});

  @override
  $PokemonListCopyWith<$Res>? get pokemonList;
}

/// @nodoc
class __$$_PokemonListStateCopyWithImpl<$Res>
    extends _$PokemonListStateCopyWithImpl<$Res, _$_PokemonListState>
    implements _$$_PokemonListStateCopyWith<$Res> {
  __$$_PokemonListStateCopyWithImpl(
      _$_PokemonListState _value, $Res Function(_$_PokemonListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pokemonList = freezed,
  }) {
    return _then(_$_PokemonListState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PokemonListStateStatus,
      pokemonList: freezed == pokemonList
          ? _value.pokemonList
          : pokemonList // ignore: cast_nullable_to_non_nullable
              as PokemonList?,
    ));
  }
}

/// @nodoc

class _$_PokemonListState extends _PokemonListState {
  const _$_PokemonListState({required this.status, this.pokemonList})
      : super._();

  @override
  final PokemonListStateStatus status;
  @override
  final PokemonList? pokemonList;

  @override
  String toString() {
    return 'PokemonListState(status: $status, pokemonList: $pokemonList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonListState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pokemonList, pokemonList) ||
                other.pokemonList == pokemonList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, pokemonList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonListStateCopyWith<_$_PokemonListState> get copyWith =>
      __$$_PokemonListStateCopyWithImpl<_$_PokemonListState>(this, _$identity);
}

abstract class _PokemonListState extends PokemonListState {
  const factory _PokemonListState(
      {required final PokemonListStateStatus status,
      final PokemonList? pokemonList}) = _$_PokemonListState;
  const _PokemonListState._() : super._();

  @override
  PokemonListStateStatus get status;
  @override
  PokemonList? get pokemonList;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonListStateCopyWith<_$_PokemonListState> get copyWith =>
      throw _privateConstructorUsedError;
}
