// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouritesState {
  List<PokemonDetails> get favouritesList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouritesStateCopyWith<FavouritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesStateCopyWith<$Res> {
  factory $FavouritesStateCopyWith(
          FavouritesState value, $Res Function(FavouritesState) then) =
      _$FavouritesStateCopyWithImpl<$Res, FavouritesState>;
  @useResult
  $Res call({List<PokemonDetails> favouritesList});
}

/// @nodoc
class _$FavouritesStateCopyWithImpl<$Res, $Val extends FavouritesState>
    implements $FavouritesStateCopyWith<$Res> {
  _$FavouritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favouritesList = null,
  }) {
    return _then(_value.copyWith(
      favouritesList: null == favouritesList
          ? _value.favouritesList
          : favouritesList // ignore: cast_nullable_to_non_nullable
              as List<PokemonDetails>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavouritesStateCopyWith<$Res>
    implements $FavouritesStateCopyWith<$Res> {
  factory _$$_FavouritesStateCopyWith(
          _$_FavouritesState value, $Res Function(_$_FavouritesState) then) =
      __$$_FavouritesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PokemonDetails> favouritesList});
}

/// @nodoc
class __$$_FavouritesStateCopyWithImpl<$Res>
    extends _$FavouritesStateCopyWithImpl<$Res, _$_FavouritesState>
    implements _$$_FavouritesStateCopyWith<$Res> {
  __$$_FavouritesStateCopyWithImpl(
      _$_FavouritesState _value, $Res Function(_$_FavouritesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favouritesList = null,
  }) {
    return _then(_$_FavouritesState(
      favouritesList: null == favouritesList
          ? _value._favouritesList
          : favouritesList // ignore: cast_nullable_to_non_nullable
              as List<PokemonDetails>,
    ));
  }
}

/// @nodoc

class _$_FavouritesState extends _FavouritesState {
  const _$_FavouritesState(
      {final List<PokemonDetails> favouritesList = const []})
      : _favouritesList = favouritesList,
        super._();

  final List<PokemonDetails> _favouritesList;
  @override
  @JsonKey()
  List<PokemonDetails> get favouritesList {
    if (_favouritesList is EqualUnmodifiableListView) return _favouritesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouritesList);
  }

  @override
  String toString() {
    return 'FavouritesState(favouritesList: $favouritesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavouritesState &&
            const DeepCollectionEquality()
                .equals(other._favouritesList, _favouritesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favouritesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavouritesStateCopyWith<_$_FavouritesState> get copyWith =>
      __$$_FavouritesStateCopyWithImpl<_$_FavouritesState>(this, _$identity);
}

abstract class _FavouritesState extends FavouritesState {
  const factory _FavouritesState({final List<PokemonDetails> favouritesList}) =
      _$_FavouritesState;
  const _FavouritesState._() : super._();

  @override
  List<PokemonDetails> get favouritesList;
  @override
  @JsonKey(ignore: true)
  _$$_FavouritesStateCopyWith<_$_FavouritesState> get copyWith =>
      throw _privateConstructorUsedError;
}
