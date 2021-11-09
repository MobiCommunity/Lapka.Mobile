// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'adopt_pet_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdoptPetDetailsEventTearOff {
  const _$AdoptPetDetailsEventTearOff();

  _GetDetails getDetails(String id) {
    return _GetDetails(
      id,
    );
  }

  _Like like(String id) {
    return _Like(
      id,
    );
  }

  _Dislike dislike(String id) {
    return _Dislike(
      id,
    );
  }
}

/// @nodoc
const $AdoptPetDetailsEvent = _$AdoptPetDetailsEventTearOff();

/// @nodoc
mixin _$AdoptPetDetailsEvent {
  String get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getDetails,
    required TResult Function(String id) like,
    required TResult Function(String id) dislike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? getDetails,
    TResult Function(String id)? like,
    TResult Function(String id)? dislike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getDetails,
    TResult Function(String id)? like,
    TResult Function(String id)? dislike,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_Like value) like,
    required TResult Function(_Dislike value) dislike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_Like value)? like,
    TResult Function(_Dislike value)? dislike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_Like value)? like,
    TResult Function(_Dislike value)? dislike,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdoptPetDetailsEventCopyWith<AdoptPetDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdoptPetDetailsEventCopyWith<$Res> {
  factory $AdoptPetDetailsEventCopyWith(AdoptPetDetailsEvent value,
          $Res Function(AdoptPetDetailsEvent) then) =
      _$AdoptPetDetailsEventCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$AdoptPetDetailsEventCopyWithImpl<$Res>
    implements $AdoptPetDetailsEventCopyWith<$Res> {
  _$AdoptPetDetailsEventCopyWithImpl(this._value, this._then);

  final AdoptPetDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(AdoptPetDetailsEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetDetailsCopyWith<$Res>
    implements $AdoptPetDetailsEventCopyWith<$Res> {
  factory _$GetDetailsCopyWith(
          _GetDetails value, $Res Function(_GetDetails) then) =
      __$GetDetailsCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$GetDetailsCopyWithImpl<$Res>
    extends _$AdoptPetDetailsEventCopyWithImpl<$Res>
    implements _$GetDetailsCopyWith<$Res> {
  __$GetDetailsCopyWithImpl(
      _GetDetails _value, $Res Function(_GetDetails) _then)
      : super(_value, (v) => _then(v as _GetDetails));

  @override
  _GetDetails get _value => super._value as _GetDetails;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_GetDetails(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetDetails implements _GetDetails {
  const _$_GetDetails(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'AdoptPetDetailsEvent.getDetails(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetDetails &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$GetDetailsCopyWith<_GetDetails> get copyWith =>
      __$GetDetailsCopyWithImpl<_GetDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getDetails,
    required TResult Function(String id) like,
    required TResult Function(String id) dislike,
  }) {
    return getDetails(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? getDetails,
    TResult Function(String id)? like,
    TResult Function(String id)? dislike,
  }) {
    return getDetails?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getDetails,
    TResult Function(String id)? like,
    TResult Function(String id)? dislike,
    required TResult orElse(),
  }) {
    if (getDetails != null) {
      return getDetails(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_Like value) like,
    required TResult Function(_Dislike value) dislike,
  }) {
    return getDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_Like value)? like,
    TResult Function(_Dislike value)? dislike,
  }) {
    return getDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_Like value)? like,
    TResult Function(_Dislike value)? dislike,
    required TResult orElse(),
  }) {
    if (getDetails != null) {
      return getDetails(this);
    }
    return orElse();
  }
}

abstract class _GetDetails implements AdoptPetDetailsEvent {
  const factory _GetDetails(String id) = _$_GetDetails;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetDetailsCopyWith<_GetDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LikeCopyWith<$Res>
    implements $AdoptPetDetailsEventCopyWith<$Res> {
  factory _$LikeCopyWith(_Like value, $Res Function(_Like) then) =
      __$LikeCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$LikeCopyWithImpl<$Res> extends _$AdoptPetDetailsEventCopyWithImpl<$Res>
    implements _$LikeCopyWith<$Res> {
  __$LikeCopyWithImpl(_Like _value, $Res Function(_Like) _then)
      : super(_value, (v) => _then(v as _Like));

  @override
  _Like get _value => super._value as _Like;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Like(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Like implements _Like {
  const _$_Like(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'AdoptPetDetailsEvent.like(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Like &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$LikeCopyWith<_Like> get copyWith =>
      __$LikeCopyWithImpl<_Like>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getDetails,
    required TResult Function(String id) like,
    required TResult Function(String id) dislike,
  }) {
    return like(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? getDetails,
    TResult Function(String id)? like,
    TResult Function(String id)? dislike,
  }) {
    return like?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getDetails,
    TResult Function(String id)? like,
    TResult Function(String id)? dislike,
    required TResult orElse(),
  }) {
    if (like != null) {
      return like(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_Like value) like,
    required TResult Function(_Dislike value) dislike,
  }) {
    return like(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_Like value)? like,
    TResult Function(_Dislike value)? dislike,
  }) {
    return like?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_Like value)? like,
    TResult Function(_Dislike value)? dislike,
    required TResult orElse(),
  }) {
    if (like != null) {
      return like(this);
    }
    return orElse();
  }
}

abstract class _Like implements AdoptPetDetailsEvent {
  const factory _Like(String id) = _$_Like;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LikeCopyWith<_Like> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DislikeCopyWith<$Res>
    implements $AdoptPetDetailsEventCopyWith<$Res> {
  factory _$DislikeCopyWith(_Dislike value, $Res Function(_Dislike) then) =
      __$DislikeCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$DislikeCopyWithImpl<$Res>
    extends _$AdoptPetDetailsEventCopyWithImpl<$Res>
    implements _$DislikeCopyWith<$Res> {
  __$DislikeCopyWithImpl(_Dislike _value, $Res Function(_Dislike) _then)
      : super(_value, (v) => _then(v as _Dislike));

  @override
  _Dislike get _value => super._value as _Dislike;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Dislike(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Dislike implements _Dislike {
  const _$_Dislike(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'AdoptPetDetailsEvent.dislike(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Dislike &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$DislikeCopyWith<_Dislike> get copyWith =>
      __$DislikeCopyWithImpl<_Dislike>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getDetails,
    required TResult Function(String id) like,
    required TResult Function(String id) dislike,
  }) {
    return dislike(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? getDetails,
    TResult Function(String id)? like,
    TResult Function(String id)? dislike,
  }) {
    return dislike?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getDetails,
    TResult Function(String id)? like,
    TResult Function(String id)? dislike,
    required TResult orElse(),
  }) {
    if (dislike != null) {
      return dislike(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_Like value) like,
    required TResult Function(_Dislike value) dislike,
  }) {
    return dislike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_Like value)? like,
    TResult Function(_Dislike value)? dislike,
  }) {
    return dislike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_Like value)? like,
    TResult Function(_Dislike value)? dislike,
    required TResult orElse(),
  }) {
    if (dislike != null) {
      return dislike(this);
    }
    return orElse();
  }
}

abstract class _Dislike implements AdoptPetDetailsEvent {
  const factory _Dislike(String id) = _$_Dislike;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DislikeCopyWith<_Dislike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AdoptPetDetailsStateTearOff {
  const _$AdoptPetDetailsStateTearOff();

  _AdoptPetDetailsState call(
      {required DetailsState detailsState, required AuthState authState}) {
    return _AdoptPetDetailsState(
      detailsState: detailsState,
      authState: authState,
    );
  }
}

/// @nodoc
const $AdoptPetDetailsState = _$AdoptPetDetailsStateTearOff();

/// @nodoc
mixin _$AdoptPetDetailsState {
  DetailsState get detailsState => throw _privateConstructorUsedError;
  AuthState get authState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdoptPetDetailsStateCopyWith<AdoptPetDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdoptPetDetailsStateCopyWith<$Res> {
  factory $AdoptPetDetailsStateCopyWith(AdoptPetDetailsState value,
          $Res Function(AdoptPetDetailsState) then) =
      _$AdoptPetDetailsStateCopyWithImpl<$Res>;
  $Res call({DetailsState detailsState, AuthState authState});

  $DetailsStateCopyWith<$Res> get detailsState;
  $AuthStateCopyWith<$Res> get authState;
}

/// @nodoc
class _$AdoptPetDetailsStateCopyWithImpl<$Res>
    implements $AdoptPetDetailsStateCopyWith<$Res> {
  _$AdoptPetDetailsStateCopyWithImpl(this._value, this._then);

  final AdoptPetDetailsState _value;
  // ignore: unused_field
  final $Res Function(AdoptPetDetailsState) _then;

  @override
  $Res call({
    Object? detailsState = freezed,
    Object? authState = freezed,
  }) {
    return _then(_value.copyWith(
      detailsState: detailsState == freezed
          ? _value.detailsState
          : detailsState // ignore: cast_nullable_to_non_nullable
              as DetailsState,
      authState: authState == freezed
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as AuthState,
    ));
  }

  @override
  $DetailsStateCopyWith<$Res> get detailsState {
    return $DetailsStateCopyWith<$Res>(_value.detailsState, (value) {
      return _then(_value.copyWith(detailsState: value));
    });
  }

  @override
  $AuthStateCopyWith<$Res> get authState {
    return $AuthStateCopyWith<$Res>(_value.authState, (value) {
      return _then(_value.copyWith(authState: value));
    });
  }
}

/// @nodoc
abstract class _$AdoptPetDetailsStateCopyWith<$Res>
    implements $AdoptPetDetailsStateCopyWith<$Res> {
  factory _$AdoptPetDetailsStateCopyWith(_AdoptPetDetailsState value,
          $Res Function(_AdoptPetDetailsState) then) =
      __$AdoptPetDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call({DetailsState detailsState, AuthState authState});

  @override
  $DetailsStateCopyWith<$Res> get detailsState;
  @override
  $AuthStateCopyWith<$Res> get authState;
}

/// @nodoc
class __$AdoptPetDetailsStateCopyWithImpl<$Res>
    extends _$AdoptPetDetailsStateCopyWithImpl<$Res>
    implements _$AdoptPetDetailsStateCopyWith<$Res> {
  __$AdoptPetDetailsStateCopyWithImpl(
      _AdoptPetDetailsState _value, $Res Function(_AdoptPetDetailsState) _then)
      : super(_value, (v) => _then(v as _AdoptPetDetailsState));

  @override
  _AdoptPetDetailsState get _value => super._value as _AdoptPetDetailsState;

  @override
  $Res call({
    Object? detailsState = freezed,
    Object? authState = freezed,
  }) {
    return _then(_AdoptPetDetailsState(
      detailsState: detailsState == freezed
          ? _value.detailsState
          : detailsState // ignore: cast_nullable_to_non_nullable
              as DetailsState,
      authState: authState == freezed
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as AuthState,
    ));
  }
}

/// @nodoc

class _$_AdoptPetDetailsState implements _AdoptPetDetailsState {
  const _$_AdoptPetDetailsState(
      {required this.detailsState, required this.authState});

  @override
  final DetailsState detailsState;
  @override
  final AuthState authState;

  @override
  String toString() {
    return 'AdoptPetDetailsState(detailsState: $detailsState, authState: $authState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdoptPetDetailsState &&
            (identical(other.detailsState, detailsState) ||
                const DeepCollectionEquality()
                    .equals(other.detailsState, detailsState)) &&
            (identical(other.authState, authState) ||
                const DeepCollectionEquality()
                    .equals(other.authState, authState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(detailsState) ^
      const DeepCollectionEquality().hash(authState);

  @JsonKey(ignore: true)
  @override
  _$AdoptPetDetailsStateCopyWith<_AdoptPetDetailsState> get copyWith =>
      __$AdoptPetDetailsStateCopyWithImpl<_AdoptPetDetailsState>(
          this, _$identity);
}

abstract class _AdoptPetDetailsState implements AdoptPetDetailsState {
  const factory _AdoptPetDetailsState(
      {required DetailsState detailsState,
      required AuthState authState}) = _$_AdoptPetDetailsState;

  @override
  DetailsState get detailsState => throw _privateConstructorUsedError;
  @override
  AuthState get authState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdoptPetDetailsStateCopyWith<_AdoptPetDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DetailsStateTearOff {
  const _$DetailsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(Pet pet) {
    return _Loaded(
      pet,
    );
  }

  _Error error(String message) {
    return _Error(
      message,
    );
  }
}

/// @nodoc
const $DetailsState = _$DetailsStateTearOff();

/// @nodoc
mixin _$DetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Pet pet) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function(String message)? error,
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
abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res> implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  final DetailsState _value;
  // ignore: unused_field
  final $Res Function(DetailsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$DetailsStateCopyWithImpl<$Res>
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
    return 'DetailsState.initial()';
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
    required TResult Function(Pet pet) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function(String message)? error,
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

abstract class _Initial implements DetailsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$DetailsStateCopyWithImpl<$Res>
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
    return 'DetailsState.loading()';
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
    required TResult Function(Pet pet) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function(String message)? error,
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

abstract class _Loading implements DetailsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({Pet pet});

  $PetCopyWith<$Res> get pet;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$DetailsStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? pet = freezed,
  }) {
    return _then(_Loaded(
      pet == freezed
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as Pet,
    ));
  }

  @override
  $PetCopyWith<$Res> get pet {
    return $PetCopyWith<$Res>(_value.pet, (value) {
      return _then(_value.copyWith(pet: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.pet);

  @override
  final Pet pet;

  @override
  String toString() {
    return 'DetailsState.loaded(pet: $pet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.pet, pet) ||
                const DeepCollectionEquality().equals(other.pet, pet)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pet);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Pet pet) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(pet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function(String message)? error,
  }) {
    return loaded?.call(pet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(pet);
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

abstract class _Loaded implements DetailsState {
  const factory _Loaded(Pet pet) = _$_Loaded;

  Pet get pet => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$DetailsStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DetailsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Pet pet) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
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

abstract class _Error implements DetailsState {
  const factory _Error(String message) = _$_Error;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
