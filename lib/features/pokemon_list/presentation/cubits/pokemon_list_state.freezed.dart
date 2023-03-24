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
  PokemonDetails? get pokemonDetails => throw _privateConstructorUsedError;
  List<PokemonDetails>? get pokemonDetailsList =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {PokemonListStateStatus status,
      PokemonList? pokemonList,
      PokemonDetails? pokemonDetails,
      List<PokemonDetails>? pokemonDetailsList});

  $PokemonListCopyWith<$Res>? get pokemonList;
  $PokemonDetailsCopyWith<$Res>? get pokemonDetails;
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
    Object? pokemonDetails = freezed,
    Object? pokemonDetailsList = freezed,
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
      pokemonDetails: freezed == pokemonDetails
          ? _value.pokemonDetails
          : pokemonDetails // ignore: cast_nullable_to_non_nullable
              as PokemonDetails?,
      pokemonDetailsList: freezed == pokemonDetailsList
          ? _value.pokemonDetailsList
          : pokemonDetailsList // ignore: cast_nullable_to_non_nullable
              as List<PokemonDetails>?,
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

  @override
  @pragma('vm:prefer-inline')
  $PokemonDetailsCopyWith<$Res>? get pokemonDetails {
    if (_value.pokemonDetails == null) {
      return null;
    }

    return $PokemonDetailsCopyWith<$Res>(_value.pokemonDetails!, (value) {
      return _then(_value.copyWith(pokemonDetails: value) as $Val);
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
  $Res call(
      {PokemonListStateStatus status,
      PokemonList? pokemonList,
      PokemonDetails? pokemonDetails,
      List<PokemonDetails>? pokemonDetailsList});

  @override
  $PokemonListCopyWith<$Res>? get pokemonList;
  @override
  $PokemonDetailsCopyWith<$Res>? get pokemonDetails;
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
    Object? pokemonDetails = freezed,
    Object? pokemonDetailsList = freezed,
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
      pokemonDetails: freezed == pokemonDetails
          ? _value.pokemonDetails
          : pokemonDetails // ignore: cast_nullable_to_non_nullable
              as PokemonDetails?,
      pokemonDetailsList: freezed == pokemonDetailsList
          ? _value._pokemonDetailsList
          : pokemonDetailsList // ignore: cast_nullable_to_non_nullable
              as List<PokemonDetails>?,
    ));
  }
}

/// @nodoc

class _$_PokemonListState extends _PokemonListState {
  const _$_PokemonListState(
      {required this.status,
      this.pokemonList,
      this.pokemonDetails,
      final List<PokemonDetails>? pokemonDetailsList})
      : _pokemonDetailsList = pokemonDetailsList,
        super._();

  @override
  final PokemonListStateStatus status;
  @override
  final PokemonList? pokemonList;
  @override
  final PokemonDetails? pokemonDetails;
  final List<PokemonDetails>? _pokemonDetailsList;
  @override
  List<PokemonDetails>? get pokemonDetailsList {
    final value = _pokemonDetailsList;
    if (value == null) return null;
    if (_pokemonDetailsList is EqualUnmodifiableListView)
      return _pokemonDetailsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PokemonListState(status: $status, pokemonList: $pokemonList, pokemonDetails: $pokemonDetails, pokemonDetailsList: $pokemonDetailsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonListState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pokemonList, pokemonList) ||
                other.pokemonList == pokemonList) &&
            (identical(other.pokemonDetails, pokemonDetails) ||
                other.pokemonDetails == pokemonDetails) &&
            const DeepCollectionEquality()
                .equals(other._pokemonDetailsList, _pokemonDetailsList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, pokemonList,
      pokemonDetails, const DeepCollectionEquality().hash(_pokemonDetailsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonListStateCopyWith<_$_PokemonListState> get copyWith =>
      __$$_PokemonListStateCopyWithImpl<_$_PokemonListState>(this, _$identity);
}

abstract class _PokemonListState extends PokemonListState {
  const factory _PokemonListState(
      {required final PokemonListStateStatus status,
      final PokemonList? pokemonList,
      final PokemonDetails? pokemonDetails,
      final List<PokemonDetails>? pokemonDetailsList}) = _$_PokemonListState;
  const _PokemonListState._() : super._();

  @override
  PokemonListStateStatus get status;
  @override
  PokemonList? get pokemonList;
  @override
  PokemonDetails? get pokemonDetails;
  @override
  List<PokemonDetails>? get pokemonDetailsList;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonListStateCopyWith<_$_PokemonListState> get copyWith =>
      throw _privateConstructorUsedError;
}
