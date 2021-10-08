// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'details_my_pets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DetailsMyPetsEventTearOff {
  const _$DetailsMyPetsEventTearOff();

  _GetDetails getDetails(String id) {
    return _GetDetails(
      id,
    );
  }

  _AddVisit addVisit(dynamic object) {
    return _AddVisit(
      object,
    );
  }

  _EditVisit editVisit(dynamic object) {
    return _EditVisit(
      object,
    );
  }

  _AddVisitInformation addVisitInformation(dynamic object) {
    return _AddVisitInformation(
      object,
    );
  }
}

/// @nodoc
const $DetailsMyPetsEvent = _$DetailsMyPetsEventTearOff();

/// @nodoc
mixin _$DetailsMyPetsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getDetails,
    required TResult Function(dynamic object) addVisit,
    required TResult Function(dynamic object) editVisit,
    required TResult Function(dynamic object) addVisitInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? getDetails,
    TResult Function(dynamic object)? addVisit,
    TResult Function(dynamic object)? editVisit,
    TResult Function(dynamic object)? addVisitInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getDetails,
    TResult Function(dynamic object)? addVisit,
    TResult Function(dynamic object)? editVisit,
    TResult Function(dynamic object)? addVisitInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_AddVisit value) addVisit,
    required TResult Function(_EditVisit value) editVisit,
    required TResult Function(_AddVisitInformation value) addVisitInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_AddVisit value)? addVisit,
    TResult Function(_EditVisit value)? editVisit,
    TResult Function(_AddVisitInformation value)? addVisitInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_AddVisit value)? addVisit,
    TResult Function(_EditVisit value)? editVisit,
    TResult Function(_AddVisitInformation value)? addVisitInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsMyPetsEventCopyWith<$Res> {
  factory $DetailsMyPetsEventCopyWith(
          DetailsMyPetsEvent value, $Res Function(DetailsMyPetsEvent) then) =
      _$DetailsMyPetsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsMyPetsEventCopyWithImpl<$Res>
    implements $DetailsMyPetsEventCopyWith<$Res> {
  _$DetailsMyPetsEventCopyWithImpl(this._value, this._then);

  final DetailsMyPetsEvent _value;
  // ignore: unused_field
  final $Res Function(DetailsMyPetsEvent) _then;
}

/// @nodoc
abstract class _$GetDetailsCopyWith<$Res> {
  factory _$GetDetailsCopyWith(
          _GetDetails value, $Res Function(_GetDetails) then) =
      __$GetDetailsCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$GetDetailsCopyWithImpl<$Res>
    extends _$DetailsMyPetsEventCopyWithImpl<$Res>
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
    return 'DetailsMyPetsEvent.getDetails(id: $id)';
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
    required TResult Function(dynamic object) addVisit,
    required TResult Function(dynamic object) editVisit,
    required TResult Function(dynamic object) addVisitInformation,
  }) {
    return getDetails(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? getDetails,
    TResult Function(dynamic object)? addVisit,
    TResult Function(dynamic object)? editVisit,
    TResult Function(dynamic object)? addVisitInformation,
  }) {
    return getDetails?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getDetails,
    TResult Function(dynamic object)? addVisit,
    TResult Function(dynamic object)? editVisit,
    TResult Function(dynamic object)? addVisitInformation,
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
    required TResult Function(_AddVisit value) addVisit,
    required TResult Function(_EditVisit value) editVisit,
    required TResult Function(_AddVisitInformation value) addVisitInformation,
  }) {
    return getDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_AddVisit value)? addVisit,
    TResult Function(_EditVisit value)? editVisit,
    TResult Function(_AddVisitInformation value)? addVisitInformation,
  }) {
    return getDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_AddVisit value)? addVisit,
    TResult Function(_EditVisit value)? editVisit,
    TResult Function(_AddVisitInformation value)? addVisitInformation,
    required TResult orElse(),
  }) {
    if (getDetails != null) {
      return getDetails(this);
    }
    return orElse();
  }
}

abstract class _GetDetails implements DetailsMyPetsEvent {
  const factory _GetDetails(String id) = _$_GetDetails;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetDetailsCopyWith<_GetDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddVisitCopyWith<$Res> {
  factory _$AddVisitCopyWith(_AddVisit value, $Res Function(_AddVisit) then) =
      __$AddVisitCopyWithImpl<$Res>;
  $Res call({dynamic object});
}

/// @nodoc
class __$AddVisitCopyWithImpl<$Res>
    extends _$DetailsMyPetsEventCopyWithImpl<$Res>
    implements _$AddVisitCopyWith<$Res> {
  __$AddVisitCopyWithImpl(_AddVisit _value, $Res Function(_AddVisit) _then)
      : super(_value, (v) => _then(v as _AddVisit));

  @override
  _AddVisit get _value => super._value as _AddVisit;

  @override
  $Res call({
    Object? object = freezed,
  }) {
    return _then(_AddVisit(
      object == freezed
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_AddVisit implements _AddVisit {
  const _$_AddVisit(this.object);

  @override
  final dynamic object;

  @override
  String toString() {
    return 'DetailsMyPetsEvent.addVisit(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVisit &&
            (identical(other.object, object) ||
                const DeepCollectionEquality().equals(other.object, object)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(object);

  @JsonKey(ignore: true)
  @override
  _$AddVisitCopyWith<_AddVisit> get copyWith =>
      __$AddVisitCopyWithImpl<_AddVisit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getDetails,
    required TResult Function(dynamic object) addVisit,
    required TResult Function(dynamic object) editVisit,
    required TResult Function(dynamic object) addVisitInformation,
  }) {
    return addVisit(object);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? getDetails,
    TResult Function(dynamic object)? addVisit,
    TResult Function(dynamic object)? editVisit,
    TResult Function(dynamic object)? addVisitInformation,
  }) {
    return addVisit?.call(object);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getDetails,
    TResult Function(dynamic object)? addVisit,
    TResult Function(dynamic object)? editVisit,
    TResult Function(dynamic object)? addVisitInformation,
    required TResult orElse(),
  }) {
    if (addVisit != null) {
      return addVisit(object);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_AddVisit value) addVisit,
    required TResult Function(_EditVisit value) editVisit,
    required TResult Function(_AddVisitInformation value) addVisitInformation,
  }) {
    return addVisit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_AddVisit value)? addVisit,
    TResult Function(_EditVisit value)? editVisit,
    TResult Function(_AddVisitInformation value)? addVisitInformation,
  }) {
    return addVisit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_AddVisit value)? addVisit,
    TResult Function(_EditVisit value)? editVisit,
    TResult Function(_AddVisitInformation value)? addVisitInformation,
    required TResult orElse(),
  }) {
    if (addVisit != null) {
      return addVisit(this);
    }
    return orElse();
  }
}

abstract class _AddVisit implements DetailsMyPetsEvent {
  const factory _AddVisit(dynamic object) = _$_AddVisit;

  dynamic get object => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddVisitCopyWith<_AddVisit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditVisitCopyWith<$Res> {
  factory _$EditVisitCopyWith(
          _EditVisit value, $Res Function(_EditVisit) then) =
      __$EditVisitCopyWithImpl<$Res>;
  $Res call({dynamic object});
}

/// @nodoc
class __$EditVisitCopyWithImpl<$Res>
    extends _$DetailsMyPetsEventCopyWithImpl<$Res>
    implements _$EditVisitCopyWith<$Res> {
  __$EditVisitCopyWithImpl(_EditVisit _value, $Res Function(_EditVisit) _then)
      : super(_value, (v) => _then(v as _EditVisit));

  @override
  _EditVisit get _value => super._value as _EditVisit;

  @override
  $Res call({
    Object? object = freezed,
  }) {
    return _then(_EditVisit(
      object == freezed
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_EditVisit implements _EditVisit {
  const _$_EditVisit(this.object);

  @override
  final dynamic object;

  @override
  String toString() {
    return 'DetailsMyPetsEvent.editVisit(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditVisit &&
            (identical(other.object, object) ||
                const DeepCollectionEquality().equals(other.object, object)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(object);

  @JsonKey(ignore: true)
  @override
  _$EditVisitCopyWith<_EditVisit> get copyWith =>
      __$EditVisitCopyWithImpl<_EditVisit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getDetails,
    required TResult Function(dynamic object) addVisit,
    required TResult Function(dynamic object) editVisit,
    required TResult Function(dynamic object) addVisitInformation,
  }) {
    return editVisit(object);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? getDetails,
    TResult Function(dynamic object)? addVisit,
    TResult Function(dynamic object)? editVisit,
    TResult Function(dynamic object)? addVisitInformation,
  }) {
    return editVisit?.call(object);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getDetails,
    TResult Function(dynamic object)? addVisit,
    TResult Function(dynamic object)? editVisit,
    TResult Function(dynamic object)? addVisitInformation,
    required TResult orElse(),
  }) {
    if (editVisit != null) {
      return editVisit(object);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_AddVisit value) addVisit,
    required TResult Function(_EditVisit value) editVisit,
    required TResult Function(_AddVisitInformation value) addVisitInformation,
  }) {
    return editVisit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_AddVisit value)? addVisit,
    TResult Function(_EditVisit value)? editVisit,
    TResult Function(_AddVisitInformation value)? addVisitInformation,
  }) {
    return editVisit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_AddVisit value)? addVisit,
    TResult Function(_EditVisit value)? editVisit,
    TResult Function(_AddVisitInformation value)? addVisitInformation,
    required TResult orElse(),
  }) {
    if (editVisit != null) {
      return editVisit(this);
    }
    return orElse();
  }
}

abstract class _EditVisit implements DetailsMyPetsEvent {
  const factory _EditVisit(dynamic object) = _$_EditVisit;

  dynamic get object => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EditVisitCopyWith<_EditVisit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddVisitInformationCopyWith<$Res> {
  factory _$AddVisitInformationCopyWith(_AddVisitInformation value,
          $Res Function(_AddVisitInformation) then) =
      __$AddVisitInformationCopyWithImpl<$Res>;
  $Res call({dynamic object});
}

/// @nodoc
class __$AddVisitInformationCopyWithImpl<$Res>
    extends _$DetailsMyPetsEventCopyWithImpl<$Res>
    implements _$AddVisitInformationCopyWith<$Res> {
  __$AddVisitInformationCopyWithImpl(
      _AddVisitInformation _value, $Res Function(_AddVisitInformation) _then)
      : super(_value, (v) => _then(v as _AddVisitInformation));

  @override
  _AddVisitInformation get _value => super._value as _AddVisitInformation;

  @override
  $Res call({
    Object? object = freezed,
  }) {
    return _then(_AddVisitInformation(
      object == freezed
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_AddVisitInformation implements _AddVisitInformation {
  const _$_AddVisitInformation(this.object);

  @override
  final dynamic object;

  @override
  String toString() {
    return 'DetailsMyPetsEvent.addVisitInformation(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVisitInformation &&
            (identical(other.object, object) ||
                const DeepCollectionEquality().equals(other.object, object)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(object);

  @JsonKey(ignore: true)
  @override
  _$AddVisitInformationCopyWith<_AddVisitInformation> get copyWith =>
      __$AddVisitInformationCopyWithImpl<_AddVisitInformation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getDetails,
    required TResult Function(dynamic object) addVisit,
    required TResult Function(dynamic object) editVisit,
    required TResult Function(dynamic object) addVisitInformation,
  }) {
    return addVisitInformation(object);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? getDetails,
    TResult Function(dynamic object)? addVisit,
    TResult Function(dynamic object)? editVisit,
    TResult Function(dynamic object)? addVisitInformation,
  }) {
    return addVisitInformation?.call(object);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getDetails,
    TResult Function(dynamic object)? addVisit,
    TResult Function(dynamic object)? editVisit,
    TResult Function(dynamic object)? addVisitInformation,
    required TResult orElse(),
  }) {
    if (addVisitInformation != null) {
      return addVisitInformation(object);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_AddVisit value) addVisit,
    required TResult Function(_EditVisit value) editVisit,
    required TResult Function(_AddVisitInformation value) addVisitInformation,
  }) {
    return addVisitInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_AddVisit value)? addVisit,
    TResult Function(_EditVisit value)? editVisit,
    TResult Function(_AddVisitInformation value)? addVisitInformation,
  }) {
    return addVisitInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_AddVisit value)? addVisit,
    TResult Function(_EditVisit value)? editVisit,
    TResult Function(_AddVisitInformation value)? addVisitInformation,
    required TResult orElse(),
  }) {
    if (addVisitInformation != null) {
      return addVisitInformation(this);
    }
    return orElse();
  }
}

abstract class _AddVisitInformation implements DetailsMyPetsEvent {
  const factory _AddVisitInformation(dynamic object) = _$_AddVisitInformation;

  dynamic get object => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddVisitInformationCopyWith<_AddVisitInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DetailsMyPetsStateTearOff {
  const _$DetailsMyPetsStateTearOff();

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

  _Error error() {
    return const _Error();
  }
}

/// @nodoc
const $DetailsMyPetsState = _$DetailsMyPetsStateTearOff();

/// @nodoc
mixin _$DetailsMyPetsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Pet pet) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function()? error,
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
abstract class $DetailsMyPetsStateCopyWith<$Res> {
  factory $DetailsMyPetsStateCopyWith(
          DetailsMyPetsState value, $Res Function(DetailsMyPetsState) then) =
      _$DetailsMyPetsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsMyPetsStateCopyWithImpl<$Res>
    implements $DetailsMyPetsStateCopyWith<$Res> {
  _$DetailsMyPetsStateCopyWithImpl(this._value, this._then);

  final DetailsMyPetsState _value;
  // ignore: unused_field
  final $Res Function(DetailsMyPetsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$DetailsMyPetsStateCopyWithImpl<$Res>
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
    return 'DetailsMyPetsState.initial()';
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
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function()? error,
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

abstract class _Initial implements DetailsMyPetsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$DetailsMyPetsStateCopyWithImpl<$Res>
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
    return 'DetailsMyPetsState.loading()';
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
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function()? error,
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

abstract class _Loading implements DetailsMyPetsState {
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
class __$LoadedCopyWithImpl<$Res> extends _$DetailsMyPetsStateCopyWithImpl<$Res>
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
    return 'DetailsMyPetsState.loaded(pet: $pet)';
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
    required TResult Function() error,
  }) {
    return loaded(pet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(pet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function()? error,
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

abstract class _Loaded implements DetailsMyPetsState {
  const factory _Loaded(Pet pet) = _$_Loaded;

  Pet get pet => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$DetailsMyPetsStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'DetailsMyPetsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Pet pet) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pet pet)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
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

abstract class _Error implements DetailsMyPetsState {
  const factory _Error() = _$_Error;
}
