// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'adopt_pet_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdoptPetListEventTearOff {
  const _$AdoptPetListEventTearOff();

  _GetAllPets getAllPets() {
    return const _GetAllPets();
  }

  _GetFilteredPets getFilteredPets(String phrase) {
    return _GetFilteredPets(
      phrase,
    );
  }
}

/// @nodoc
const $AdoptPetListEvent = _$AdoptPetListEventTearOff();

/// @nodoc
mixin _$AdoptPetListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPets,
    required TResult Function(String phrase) getFilteredPets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllPets,
    TResult Function(String phrase)? getFilteredPets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPets,
    TResult Function(String phrase)? getFilteredPets,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllPets value) getAllPets,
    required TResult Function(_GetFilteredPets value) getFilteredPets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllPets value)? getAllPets,
    TResult Function(_GetFilteredPets value)? getFilteredPets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllPets value)? getAllPets,
    TResult Function(_GetFilteredPets value)? getFilteredPets,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdoptPetListEventCopyWith<$Res> {
  factory $AdoptPetListEventCopyWith(
          AdoptPetListEvent value, $Res Function(AdoptPetListEvent) then) =
      _$AdoptPetListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdoptPetListEventCopyWithImpl<$Res>
    implements $AdoptPetListEventCopyWith<$Res> {
  _$AdoptPetListEventCopyWithImpl(this._value, this._then);

  final AdoptPetListEvent _value;
  // ignore: unused_field
  final $Res Function(AdoptPetListEvent) _then;
}

/// @nodoc
abstract class _$GetAllPetsCopyWith<$Res> {
  factory _$GetAllPetsCopyWith(
          _GetAllPets value, $Res Function(_GetAllPets) then) =
      __$GetAllPetsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAllPetsCopyWithImpl<$Res>
    extends _$AdoptPetListEventCopyWithImpl<$Res>
    implements _$GetAllPetsCopyWith<$Res> {
  __$GetAllPetsCopyWithImpl(
      _GetAllPets _value, $Res Function(_GetAllPets) _then)
      : super(_value, (v) => _then(v as _GetAllPets));

  @override
  _GetAllPets get _value => super._value as _GetAllPets;
}

/// @nodoc

class _$_GetAllPets implements _GetAllPets {
  const _$_GetAllPets();

  @override
  String toString() {
    return 'AdoptPetListEvent.getAllPets()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllPets);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPets,
    required TResult Function(String phrase) getFilteredPets,
  }) {
    return getAllPets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllPets,
    TResult Function(String phrase)? getFilteredPets,
  }) {
    return getAllPets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPets,
    TResult Function(String phrase)? getFilteredPets,
    required TResult orElse(),
  }) {
    if (getAllPets != null) {
      return getAllPets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllPets value) getAllPets,
    required TResult Function(_GetFilteredPets value) getFilteredPets,
  }) {
    return getAllPets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllPets value)? getAllPets,
    TResult Function(_GetFilteredPets value)? getFilteredPets,
  }) {
    return getAllPets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllPets value)? getAllPets,
    TResult Function(_GetFilteredPets value)? getFilteredPets,
    required TResult orElse(),
  }) {
    if (getAllPets != null) {
      return getAllPets(this);
    }
    return orElse();
  }
}

abstract class _GetAllPets implements AdoptPetListEvent {
  const factory _GetAllPets() = _$_GetAllPets;
}

/// @nodoc
abstract class _$GetFilteredPetsCopyWith<$Res> {
  factory _$GetFilteredPetsCopyWith(
          _GetFilteredPets value, $Res Function(_GetFilteredPets) then) =
      __$GetFilteredPetsCopyWithImpl<$Res>;
  $Res call({String phrase});
}

/// @nodoc
class __$GetFilteredPetsCopyWithImpl<$Res>
    extends _$AdoptPetListEventCopyWithImpl<$Res>
    implements _$GetFilteredPetsCopyWith<$Res> {
  __$GetFilteredPetsCopyWithImpl(
      _GetFilteredPets _value, $Res Function(_GetFilteredPets) _then)
      : super(_value, (v) => _then(v as _GetFilteredPets));

  @override
  _GetFilteredPets get _value => super._value as _GetFilteredPets;

  @override
  $Res call({
    Object? phrase = freezed,
  }) {
    return _then(_GetFilteredPets(
      phrase == freezed
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetFilteredPets implements _GetFilteredPets {
  const _$_GetFilteredPets(this.phrase);

  @override
  final String phrase;

  @override
  String toString() {
    return 'AdoptPetListEvent.getFilteredPets(phrase: $phrase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetFilteredPets &&
            (identical(other.phrase, phrase) ||
                const DeepCollectionEquality().equals(other.phrase, phrase)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phrase);

  @JsonKey(ignore: true)
  @override
  _$GetFilteredPetsCopyWith<_GetFilteredPets> get copyWith =>
      __$GetFilteredPetsCopyWithImpl<_GetFilteredPets>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPets,
    required TResult Function(String phrase) getFilteredPets,
  }) {
    return getFilteredPets(phrase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllPets,
    TResult Function(String phrase)? getFilteredPets,
  }) {
    return getFilteredPets?.call(phrase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPets,
    TResult Function(String phrase)? getFilteredPets,
    required TResult orElse(),
  }) {
    if (getFilteredPets != null) {
      return getFilteredPets(phrase);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllPets value) getAllPets,
    required TResult Function(_GetFilteredPets value) getFilteredPets,
  }) {
    return getFilteredPets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllPets value)? getAllPets,
    TResult Function(_GetFilteredPets value)? getFilteredPets,
  }) {
    return getFilteredPets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllPets value)? getAllPets,
    TResult Function(_GetFilteredPets value)? getFilteredPets,
    required TResult orElse(),
  }) {
    if (getFilteredPets != null) {
      return getFilteredPets(this);
    }
    return orElse();
  }
}

abstract class _GetFilteredPets implements AdoptPetListEvent {
  const factory _GetFilteredPets(String phrase) = _$_GetFilteredPets;

  String get phrase => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetFilteredPetsCopyWith<_GetFilteredPets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AdoptPetListStateTearOff {
  const _$AdoptPetListStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(List<Pet> pets) {
    return _Loaded(
      pets,
    );
  }

  _Error error(String errorMsg) {
    return _Error(
      errorMsg,
    );
  }
}

/// @nodoc
const $AdoptPetListState = _$AdoptPetListStateTearOff();

/// @nodoc
mixin _$AdoptPetListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Pet> pets) loaded,
    required TResult Function(String errorMsg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pet> pets)? loaded,
    TResult Function(String errorMsg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pet> pets)? loaded,
    TResult Function(String errorMsg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdoptPetListStateCopyWith<$Res> {
  factory $AdoptPetListStateCopyWith(
          AdoptPetListState value, $Res Function(AdoptPetListState) then) =
      _$AdoptPetListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdoptPetListStateCopyWithImpl<$Res>
    implements $AdoptPetListStateCopyWith<$Res> {
  _$AdoptPetListStateCopyWithImpl(this._value, this._then);

  final AdoptPetListState _value;
  // ignore: unused_field
  final $Res Function(AdoptPetListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AdoptPetListStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AdoptPetListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Pet> pets) loaded,
    required TResult Function(String errorMsg) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pet> pets)? loaded,
    TResult Function(String errorMsg)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pet> pets)? loaded,
    TResult Function(String errorMsg)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AdoptPetListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$AdoptPetListStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AdoptPetListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Pet> pets) loaded,
    required TResult Function(String errorMsg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pet> pets)? loaded,
    TResult Function(String errorMsg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pet> pets)? loaded,
    TResult Function(String errorMsg)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AdoptPetListState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Pet> pets});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$AdoptPetListStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? pets = freezed,
  }) {
    return _then(_Loaded(
      pets == freezed
          ? _value.pets
          : pets // ignore: cast_nullable_to_non_nullable
              as List<Pet>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.pets);

  @override
  final List<Pet> pets;

  @override
  String toString() {
    return 'AdoptPetListState.loaded(pets: $pets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.pets, pets) ||
                const DeepCollectionEquality().equals(other.pets, pets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pets);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Pet> pets) loaded,
    required TResult Function(String errorMsg) error,
  }) {
    return loaded(pets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pet> pets)? loaded,
    TResult Function(String errorMsg)? error,
  }) {
    return loaded?.call(pets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pet> pets)? loaded,
    TResult Function(String errorMsg)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(pets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AdoptPetListState {
  const factory _Loaded(List<Pet> pets) = _$_Loaded;

  List<Pet> get pets => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String errorMsg});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$AdoptPetListStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? errorMsg = freezed,
  }) {
    return _then(_Error(
      errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'AdoptPetListState.error(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.errorMsg, errorMsg) ||
                const DeepCollectionEquality()
                    .equals(other.errorMsg, errorMsg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMsg);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Pet> pets) loaded,
    required TResult Function(String errorMsg) error,
  }) {
    return error(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pet> pets)? loaded,
    TResult Function(String errorMsg)? error,
  }) {
    return error?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pet> pets)? loaded,
    TResult Function(String errorMsg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AdoptPetListState {
  const factory _Error(String errorMsg) = _$_Error;

  String get errorMsg => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
