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
  List<PokemonDetails>? get pokemonDetailsList =>
      throw _privateConstructorUsedError;
  PokemonDetails? get searchedPokemonDetails =>
      throw _privateConstructorUsedError;
  SearchStateStatus? get searchState => throw _privateConstructorUsedError;
  int? get currentPage => throw _privateConstructorUsedError;

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
      List<PokemonDetails>? pokemonDetailsList,
      PokemonDetails? searchedPokemonDetails,
      SearchStateStatus? searchState,
      int? currentPage});

  $PokemonDetailsCopyWith<$Res>? get searchedPokemonDetails;
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
    Object? pokemonDetailsList = freezed,
    Object? searchedPokemonDetails = freezed,
    Object? searchState = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PokemonListStateStatus,
      pokemonDetailsList: freezed == pokemonDetailsList
          ? _value.pokemonDetailsList
          : pokemonDetailsList // ignore: cast_nullable_to_non_nullable
              as List<PokemonDetails>?,
      searchedPokemonDetails: freezed == searchedPokemonDetails
          ? _value.searchedPokemonDetails
          : searchedPokemonDetails // ignore: cast_nullable_to_non_nullable
              as PokemonDetails?,
      searchState: freezed == searchState
          ? _value.searchState
          : searchState // ignore: cast_nullable_to_non_nullable
              as SearchStateStatus?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonDetailsCopyWith<$Res>? get searchedPokemonDetails {
    if (_value.searchedPokemonDetails == null) {
      return null;
    }

    return $PokemonDetailsCopyWith<$Res>(_value.searchedPokemonDetails!,
        (value) {
      return _then(_value.copyWith(searchedPokemonDetails: value) as $Val);
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
      List<PokemonDetails>? pokemonDetailsList,
      PokemonDetails? searchedPokemonDetails,
      SearchStateStatus? searchState,
      int? currentPage});

  @override
  $PokemonDetailsCopyWith<$Res>? get searchedPokemonDetails;
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
    Object? pokemonDetailsList = freezed,
    Object? searchedPokemonDetails = freezed,
    Object? searchState = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_$_PokemonListState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PokemonListStateStatus,
      pokemonDetailsList: freezed == pokemonDetailsList
          ? _value._pokemonDetailsList
          : pokemonDetailsList // ignore: cast_nullable_to_non_nullable
              as List<PokemonDetails>?,
      searchedPokemonDetails: freezed == searchedPokemonDetails
          ? _value.searchedPokemonDetails
          : searchedPokemonDetails // ignore: cast_nullable_to_non_nullable
              as PokemonDetails?,
      searchState: freezed == searchState
          ? _value.searchState
          : searchState // ignore: cast_nullable_to_non_nullable
              as SearchStateStatus?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_PokemonListState extends _PokemonListState {
  const _$_PokemonListState(
      {required this.status,
      final List<PokemonDetails>? pokemonDetailsList,
      this.searchedPokemonDetails,
      this.searchState,
      this.currentPage})
      : _pokemonDetailsList = pokemonDetailsList,
        super._();

  @override
  final PokemonListStateStatus status;
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
  final PokemonDetails? searchedPokemonDetails;
  @override
  final SearchStateStatus? searchState;
  @override
  final int? currentPage;

  @override
  String toString() {
    return 'PokemonListState(status: $status, pokemonDetailsList: $pokemonDetailsList, searchedPokemonDetails: $searchedPokemonDetails, searchState: $searchState, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonListState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._pokemonDetailsList, _pokemonDetailsList) &&
            (identical(other.searchedPokemonDetails, searchedPokemonDetails) ||
                other.searchedPokemonDetails == searchedPokemonDetails) &&
            (identical(other.searchState, searchState) ||
                other.searchState == searchState) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_pokemonDetailsList),
      searchedPokemonDetails,
      searchState,
      currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonListStateCopyWith<_$_PokemonListState> get copyWith =>
      __$$_PokemonListStateCopyWithImpl<_$_PokemonListState>(this, _$identity);
}

abstract class _PokemonListState extends PokemonListState {
  const factory _PokemonListState(
      {required final PokemonListStateStatus status,
      final List<PokemonDetails>? pokemonDetailsList,
      final PokemonDetails? searchedPokemonDetails,
      final SearchStateStatus? searchState,
      final int? currentPage}) = _$_PokemonListState;
  const _PokemonListState._() : super._();

  @override
  PokemonListStateStatus get status;
  @override
  List<PokemonDetails>? get pokemonDetailsList;
  @override
  PokemonDetails? get searchedPokemonDetails;
  @override
  SearchStateStatus? get searchState;
  @override
  int? get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonListStateCopyWith<_$_PokemonListState> get copyWith =>
      throw _privateConstructorUsedError;
}
