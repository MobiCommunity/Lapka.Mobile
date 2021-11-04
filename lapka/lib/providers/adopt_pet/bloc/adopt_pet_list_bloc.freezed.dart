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
class _$PetFiltersTearOff {
  const _$PetFiltersTearOff();

  _PetFilters call({String? petName, Species? race, String? lat, String? lng}) {
    return _PetFilters(
      petName: petName,
      race: race,
      lat: lat,
      lng: lng,
    );
  }
}

/// @nodoc
const $PetFilters = _$PetFiltersTearOff();

/// @nodoc
mixin _$PetFilters {
  String? get petName => throw _privateConstructorUsedError;
  Species? get race => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get lng => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PetFiltersCopyWith<PetFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetFiltersCopyWith<$Res> {
  factory $PetFiltersCopyWith(
          PetFilters value, $Res Function(PetFilters) then) =
      _$PetFiltersCopyWithImpl<$Res>;
  $Res call({String? petName, Species? race, String? lat, String? lng});
}

/// @nodoc
class _$PetFiltersCopyWithImpl<$Res> implements $PetFiltersCopyWith<$Res> {
  _$PetFiltersCopyWithImpl(this._value, this._then);

  final PetFilters _value;
  // ignore: unused_field
  final $Res Function(PetFilters) _then;

  @override
  $Res call({
    Object? petName = freezed,
    Object? race = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      petName: petName == freezed
          ? _value.petName
          : petName // ignore: cast_nullable_to_non_nullable
              as String?,
      race: race == freezed
          ? _value.race
          : race // ignore: cast_nullable_to_non_nullable
              as Species?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PetFiltersCopyWith<$Res> implements $PetFiltersCopyWith<$Res> {
  factory _$PetFiltersCopyWith(
          _PetFilters value, $Res Function(_PetFilters) then) =
      __$PetFiltersCopyWithImpl<$Res>;
  @override
  $Res call({String? petName, Species? race, String? lat, String? lng});
}

/// @nodoc
class __$PetFiltersCopyWithImpl<$Res> extends _$PetFiltersCopyWithImpl<$Res>
    implements _$PetFiltersCopyWith<$Res> {
  __$PetFiltersCopyWithImpl(
      _PetFilters _value, $Res Function(_PetFilters) _then)
      : super(_value, (v) => _then(v as _PetFilters));

  @override
  _PetFilters get _value => super._value as _PetFilters;

  @override
  $Res call({
    Object? petName = freezed,
    Object? race = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_PetFilters(
      petName: petName == freezed
          ? _value.petName
          : petName // ignore: cast_nullable_to_non_nullable
              as String?,
      race: race == freezed
          ? _value.race
          : race // ignore: cast_nullable_to_non_nullable
              as Species?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PetFilters implements _PetFilters {
  const _$_PetFilters({this.petName, this.race, this.lat, this.lng});

  @override
  final String? petName;
  @override
  final Species? race;
  @override
  final String? lat;
  @override
  final String? lng;

  @override
  String toString() {
    return 'PetFilters(petName: $petName, race: $race, lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PetFilters &&
            (identical(other.petName, petName) ||
                const DeepCollectionEquality()
                    .equals(other.petName, petName)) &&
            (identical(other.race, race) ||
                const DeepCollectionEquality().equals(other.race, race)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lng, lng) ||
                const DeepCollectionEquality().equals(other.lng, lng)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(petName) ^
      const DeepCollectionEquality().hash(race) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lng);

  @JsonKey(ignore: true)
  @override
  _$PetFiltersCopyWith<_PetFilters> get copyWith =>
      __$PetFiltersCopyWithImpl<_PetFilters>(this, _$identity);
}

abstract class _PetFilters implements PetFilters {
  const factory _PetFilters(
      {String? petName,
      Species? race,
      String? lat,
      String? lng}) = _$_PetFilters;

  @override
  String? get petName => throw _privateConstructorUsedError;
  @override
  Species? get race => throw _privateConstructorUsedError;
  @override
  String? get lat => throw _privateConstructorUsedError;
  @override
  String? get lng => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PetFiltersCopyWith<_PetFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AdoptPetListEventTearOff {
  const _$AdoptPetListEventTearOff();

  _GetPets getPets({PetFilters? filters}) {
    return _GetPets(
      filters: filters,
    );
  }

  _UpdateFilters updateFilters(PetFilters filters) {
    return _UpdateFilters(
      filters,
    );
  }
}

/// @nodoc
const $AdoptPetListEvent = _$AdoptPetListEventTearOff();

/// @nodoc
mixin _$AdoptPetListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PetFilters? filters) getPets,
    required TResult Function(PetFilters filters) updateFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PetFilters? filters)? getPets,
    TResult Function(PetFilters filters)? updateFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PetFilters? filters)? getPets,
    TResult Function(PetFilters filters)? updateFilters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPets value) getPets,
    required TResult Function(_UpdateFilters value) updateFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPets value)? getPets,
    TResult Function(_UpdateFilters value)? updateFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPets value)? getPets,
    TResult Function(_UpdateFilters value)? updateFilters,
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
abstract class _$GetPetsCopyWith<$Res> {
  factory _$GetPetsCopyWith(_GetPets value, $Res Function(_GetPets) then) =
      __$GetPetsCopyWithImpl<$Res>;
  $Res call({PetFilters? filters});

  $PetFiltersCopyWith<$Res>? get filters;
}

/// @nodoc
class __$GetPetsCopyWithImpl<$Res> extends _$AdoptPetListEventCopyWithImpl<$Res>
    implements _$GetPetsCopyWith<$Res> {
  __$GetPetsCopyWithImpl(_GetPets _value, $Res Function(_GetPets) _then)
      : super(_value, (v) => _then(v as _GetPets));

  @override
  _GetPets get _value => super._value as _GetPets;

  @override
  $Res call({
    Object? filters = freezed,
  }) {
    return _then(_GetPets(
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as PetFilters?,
    ));
  }

  @override
  $PetFiltersCopyWith<$Res>? get filters {
    if (_value.filters == null) {
      return null;
    }

    return $PetFiltersCopyWith<$Res>(_value.filters!, (value) {
      return _then(_value.copyWith(filters: value));
    });
  }
}

/// @nodoc

class _$_GetPets implements _GetPets {
  const _$_GetPets({this.filters});

  @override
  final PetFilters? filters;

  @override
  String toString() {
    return 'AdoptPetListEvent.getPets(filters: $filters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPets &&
            (identical(other.filters, filters) ||
                const DeepCollectionEquality().equals(other.filters, filters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filters);

  @JsonKey(ignore: true)
  @override
  _$GetPetsCopyWith<_GetPets> get copyWith =>
      __$GetPetsCopyWithImpl<_GetPets>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PetFilters? filters) getPets,
    required TResult Function(PetFilters filters) updateFilters,
  }) {
    return getPets(filters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PetFilters? filters)? getPets,
    TResult Function(PetFilters filters)? updateFilters,
  }) {
    return getPets?.call(filters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PetFilters? filters)? getPets,
    TResult Function(PetFilters filters)? updateFilters,
    required TResult orElse(),
  }) {
    if (getPets != null) {
      return getPets(filters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPets value) getPets,
    required TResult Function(_UpdateFilters value) updateFilters,
  }) {
    return getPets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPets value)? getPets,
    TResult Function(_UpdateFilters value)? updateFilters,
  }) {
    return getPets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPets value)? getPets,
    TResult Function(_UpdateFilters value)? updateFilters,
    required TResult orElse(),
  }) {
    if (getPets != null) {
      return getPets(this);
    }
    return orElse();
  }
}

abstract class _GetPets implements AdoptPetListEvent {
  const factory _GetPets({PetFilters? filters}) = _$_GetPets;

  PetFilters? get filters => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetPetsCopyWith<_GetPets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateFiltersCopyWith<$Res> {
  factory _$UpdateFiltersCopyWith(
          _UpdateFilters value, $Res Function(_UpdateFilters) then) =
      __$UpdateFiltersCopyWithImpl<$Res>;
  $Res call({PetFilters filters});

  $PetFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$UpdateFiltersCopyWithImpl<$Res>
    extends _$AdoptPetListEventCopyWithImpl<$Res>
    implements _$UpdateFiltersCopyWith<$Res> {
  __$UpdateFiltersCopyWithImpl(
      _UpdateFilters _value, $Res Function(_UpdateFilters) _then)
      : super(_value, (v) => _then(v as _UpdateFilters));

  @override
  _UpdateFilters get _value => super._value as _UpdateFilters;

  @override
  $Res call({
    Object? filters = freezed,
  }) {
    return _then(_UpdateFilters(
      filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as PetFilters,
    ));
  }

  @override
  $PetFiltersCopyWith<$Res> get filters {
    return $PetFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value));
    });
  }
}

/// @nodoc

class _$_UpdateFilters implements _UpdateFilters {
  const _$_UpdateFilters(this.filters);

  @override
  final PetFilters filters;

  @override
  String toString() {
    return 'AdoptPetListEvent.updateFilters(filters: $filters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateFilters &&
            (identical(other.filters, filters) ||
                const DeepCollectionEquality().equals(other.filters, filters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filters);

  @JsonKey(ignore: true)
  @override
  _$UpdateFiltersCopyWith<_UpdateFilters> get copyWith =>
      __$UpdateFiltersCopyWithImpl<_UpdateFilters>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PetFilters? filters) getPets,
    required TResult Function(PetFilters filters) updateFilters,
  }) {
    return updateFilters(filters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PetFilters? filters)? getPets,
    TResult Function(PetFilters filters)? updateFilters,
  }) {
    return updateFilters?.call(filters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PetFilters? filters)? getPets,
    TResult Function(PetFilters filters)? updateFilters,
    required TResult orElse(),
  }) {
    if (updateFilters != null) {
      return updateFilters(filters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPets value) getPets,
    required TResult Function(_UpdateFilters value) updateFilters,
  }) {
    return updateFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPets value)? getPets,
    TResult Function(_UpdateFilters value)? updateFilters,
  }) {
    return updateFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPets value)? getPets,
    TResult Function(_UpdateFilters value)? updateFilters,
    required TResult orElse(),
  }) {
    if (updateFilters != null) {
      return updateFilters(this);
    }
    return orElse();
  }
}

abstract class _UpdateFilters implements AdoptPetListEvent {
  const factory _UpdateFilters(PetFilters filters) = _$_UpdateFilters;

  PetFilters get filters => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateFiltersCopyWith<_UpdateFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AdoptPetListStateTearOff {
  const _$AdoptPetListStateTearOff();

  _AdoptPetListState call(
      {required ListState listState, required PetFilters filters}) {
    return _AdoptPetListState(
      listState: listState,
      filters: filters,
    );
  }
}

/// @nodoc
const $AdoptPetListState = _$AdoptPetListStateTearOff();

/// @nodoc
mixin _$AdoptPetListState {
  ListState get listState => throw _privateConstructorUsedError;
  PetFilters get filters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdoptPetListStateCopyWith<AdoptPetListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdoptPetListStateCopyWith<$Res> {
  factory $AdoptPetListStateCopyWith(
          AdoptPetListState value, $Res Function(AdoptPetListState) then) =
      _$AdoptPetListStateCopyWithImpl<$Res>;
  $Res call({ListState listState, PetFilters filters});

  $ListStateCopyWith<$Res> get listState;
  $PetFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class _$AdoptPetListStateCopyWithImpl<$Res>
    implements $AdoptPetListStateCopyWith<$Res> {
  _$AdoptPetListStateCopyWithImpl(this._value, this._then);

  final AdoptPetListState _value;
  // ignore: unused_field
  final $Res Function(AdoptPetListState) _then;

  @override
  $Res call({
    Object? listState = freezed,
    Object? filters = freezed,
  }) {
    return _then(_value.copyWith(
      listState: listState == freezed
          ? _value.listState
          : listState // ignore: cast_nullable_to_non_nullable
              as ListState,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as PetFilters,
    ));
  }

  @override
  $ListStateCopyWith<$Res> get listState {
    return $ListStateCopyWith<$Res>(_value.listState, (value) {
      return _then(_value.copyWith(listState: value));
    });
  }

  @override
  $PetFiltersCopyWith<$Res> get filters {
    return $PetFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value));
    });
  }
}

/// @nodoc
abstract class _$AdoptPetListStateCopyWith<$Res>
    implements $AdoptPetListStateCopyWith<$Res> {
  factory _$AdoptPetListStateCopyWith(
          _AdoptPetListState value, $Res Function(_AdoptPetListState) then) =
      __$AdoptPetListStateCopyWithImpl<$Res>;
  @override
  $Res call({ListState listState, PetFilters filters});

  @override
  $ListStateCopyWith<$Res> get listState;
  @override
  $PetFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$AdoptPetListStateCopyWithImpl<$Res>
    extends _$AdoptPetListStateCopyWithImpl<$Res>
    implements _$AdoptPetListStateCopyWith<$Res> {
  __$AdoptPetListStateCopyWithImpl(
      _AdoptPetListState _value, $Res Function(_AdoptPetListState) _then)
      : super(_value, (v) => _then(v as _AdoptPetListState));

  @override
  _AdoptPetListState get _value => super._value as _AdoptPetListState;

  @override
  $Res call({
    Object? listState = freezed,
    Object? filters = freezed,
  }) {
    return _then(_AdoptPetListState(
      listState: listState == freezed
          ? _value.listState
          : listState // ignore: cast_nullable_to_non_nullable
              as ListState,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as PetFilters,
    ));
  }
}

/// @nodoc

class _$_AdoptPetListState implements _AdoptPetListState {
  const _$_AdoptPetListState({required this.listState, required this.filters});

  @override
  final ListState listState;
  @override
  final PetFilters filters;

  @override
  String toString() {
    return 'AdoptPetListState(listState: $listState, filters: $filters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdoptPetListState &&
            (identical(other.listState, listState) ||
                const DeepCollectionEquality()
                    .equals(other.listState, listState)) &&
            (identical(other.filters, filters) ||
                const DeepCollectionEquality().equals(other.filters, filters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listState) ^
      const DeepCollectionEquality().hash(filters);

  @JsonKey(ignore: true)
  @override
  _$AdoptPetListStateCopyWith<_AdoptPetListState> get copyWith =>
      __$AdoptPetListStateCopyWithImpl<_AdoptPetListState>(this, _$identity);
}

abstract class _AdoptPetListState implements AdoptPetListState {
  const factory _AdoptPetListState(
      {required ListState listState,
      required PetFilters filters}) = _$_AdoptPetListState;

  @override
  ListState get listState => throw _privateConstructorUsedError;
  @override
  PetFilters get filters => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdoptPetListStateCopyWith<_AdoptPetListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ListStateTearOff {
  const _$ListStateTearOff();

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
const $ListState = _$ListStateTearOff();

/// @nodoc
mixin _$ListState {
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
abstract class $ListStateCopyWith<$Res> {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) then) =
      _$ListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListStateCopyWithImpl<$Res> implements $ListStateCopyWith<$Res> {
  _$ListStateCopyWithImpl(this._value, this._then);

  final ListState _value;
  // ignore: unused_field
  final $Res Function(ListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ListStateCopyWithImpl<$Res>
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
    return 'ListState.initial()';
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

abstract class _Initial implements ListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ListStateCopyWithImpl<$Res>
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
    return 'ListState.loading()';
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

abstract class _Loading implements ListState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Pet> pets});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$ListStateCopyWithImpl<$Res>
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
    return 'ListState.loaded(pets: $pets)';
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

abstract class _Loaded implements ListState {
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
class __$ErrorCopyWithImpl<$Res> extends _$ListStateCopyWithImpl<$Res>
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
    return 'ListState.error(errorMsg: $errorMsg)';
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

abstract class _Error implements ListState {
  const factory _Error(String errorMsg) = _$_Error;

  String get errorMsg => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
