// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'like_pet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LikePetEventTearOff {
  const _$LikePetEventTearOff();

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
const $LikePetEvent = _$LikePetEventTearOff();

/// @nodoc
mixin _$LikePetEvent {
  String get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) like,
    required TResult Function(String id) dislike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? like,
    TResult Function(String id)? dislike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? like,
    TResult Function(String id)? dislike,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Like value) like,
    required TResult Function(_Dislike value) dislike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Like value)? like,
    TResult Function(_Dislike value)? dislike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Like value)? like,
    TResult Function(_Dislike value)? dislike,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikePetEventCopyWith<LikePetEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikePetEventCopyWith<$Res> {
  factory $LikePetEventCopyWith(
          LikePetEvent value, $Res Function(LikePetEvent) then) =
      _$LikePetEventCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$LikePetEventCopyWithImpl<$Res> implements $LikePetEventCopyWith<$Res> {
  _$LikePetEventCopyWithImpl(this._value, this._then);

  final LikePetEvent _value;
  // ignore: unused_field
  final $Res Function(LikePetEvent) _then;

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
abstract class _$LikeCopyWith<$Res> implements $LikePetEventCopyWith<$Res> {
  factory _$LikeCopyWith(_Like value, $Res Function(_Like) then) =
      __$LikeCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$LikeCopyWithImpl<$Res> extends _$LikePetEventCopyWithImpl<$Res>
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
    return 'LikePetEvent.like(id: $id)';
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
    required TResult Function(String id) like,
    required TResult Function(String id) dislike,
  }) {
    return like(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? like,
    TResult Function(String id)? dislike,
  }) {
    return like?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_Like value) like,
    required TResult Function(_Dislike value) dislike,
  }) {
    return like(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Like value)? like,
    TResult Function(_Dislike value)? dislike,
  }) {
    return like?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _Like implements LikePetEvent {
  const factory _Like(String id) = _$_Like;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LikeCopyWith<_Like> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DislikeCopyWith<$Res> implements $LikePetEventCopyWith<$Res> {
  factory _$DislikeCopyWith(_Dislike value, $Res Function(_Dislike) then) =
      __$DislikeCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$DislikeCopyWithImpl<$Res> extends _$LikePetEventCopyWithImpl<$Res>
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
    return 'LikePetEvent.dislike(id: $id)';
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
    required TResult Function(String id) like,
    required TResult Function(String id) dislike,
  }) {
    return dislike(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? like,
    TResult Function(String id)? dislike,
  }) {
    return dislike?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_Like value) like,
    required TResult Function(_Dislike value) dislike,
  }) {
    return dislike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Like value)? like,
    TResult Function(_Dislike value)? dislike,
  }) {
    return dislike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _Dislike implements LikePetEvent {
  const factory _Dislike(String id) = _$_Dislike;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DislikeCopyWith<_Dislike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LikePetStateTearOff {
  const _$LikePetStateTearOff();

  _Liked liked() {
    return const _Liked();
  }

  _Disliked disliked() {
    return const _Disliked();
  }

  _Fetching fetching() {
    return const _Fetching();
  }

  _Unknown unknown() {
    return const _Unknown();
  }

  _Error error(String errorMessage) {
    return _Error(
      errorMessage,
    );
  }
}

/// @nodoc
const $LikePetState = _$LikePetStateTearOff();

/// @nodoc
mixin _$LikePetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() liked,
    required TResult Function() disliked,
    required TResult Function() fetching,
    required TResult Function() unknown,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? liked,
    TResult Function()? disliked,
    TResult Function()? fetching,
    TResult Function()? unknown,
    TResult Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? liked,
    TResult Function()? disliked,
    TResult Function()? fetching,
    TResult Function()? unknown,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Liked value) liked,
    required TResult Function(_Disliked value) disliked,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Liked value)? liked,
    TResult Function(_Disliked value)? disliked,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Liked value)? liked,
    TResult Function(_Disliked value)? disliked,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikePetStateCopyWith<$Res> {
  factory $LikePetStateCopyWith(
          LikePetState value, $Res Function(LikePetState) then) =
      _$LikePetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LikePetStateCopyWithImpl<$Res> implements $LikePetStateCopyWith<$Res> {
  _$LikePetStateCopyWithImpl(this._value, this._then);

  final LikePetState _value;
  // ignore: unused_field
  final $Res Function(LikePetState) _then;
}

/// @nodoc
abstract class _$LikedCopyWith<$Res> {
  factory _$LikedCopyWith(_Liked value, $Res Function(_Liked) then) =
      __$LikedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LikedCopyWithImpl<$Res> extends _$LikePetStateCopyWithImpl<$Res>
    implements _$LikedCopyWith<$Res> {
  __$LikedCopyWithImpl(_Liked _value, $Res Function(_Liked) _then)
      : super(_value, (v) => _then(v as _Liked));

  @override
  _Liked get _value => super._value as _Liked;
}

/// @nodoc

class _$_Liked implements _Liked {
  const _$_Liked();

  @override
  String toString() {
    return 'LikePetState.liked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Liked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() liked,
    required TResult Function() disliked,
    required TResult Function() fetching,
    required TResult Function() unknown,
    required TResult Function(String errorMessage) error,
  }) {
    return liked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? liked,
    TResult Function()? disliked,
    TResult Function()? fetching,
    TResult Function()? unknown,
    TResult Function(String errorMessage)? error,
  }) {
    return liked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? liked,
    TResult Function()? disliked,
    TResult Function()? fetching,
    TResult Function()? unknown,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Liked value) liked,
    required TResult Function(_Disliked value) disliked,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Error value) error,
  }) {
    return liked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Liked value)? liked,
    TResult Function(_Disliked value)? disliked,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Error value)? error,
  }) {
    return liked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Liked value)? liked,
    TResult Function(_Disliked value)? disliked,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(this);
    }
    return orElse();
  }
}

abstract class _Liked implements LikePetState {
  const factory _Liked() = _$_Liked;
}

/// @nodoc
abstract class _$DislikedCopyWith<$Res> {
  factory _$DislikedCopyWith(_Disliked value, $Res Function(_Disliked) then) =
      __$DislikedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DislikedCopyWithImpl<$Res> extends _$LikePetStateCopyWithImpl<$Res>
    implements _$DislikedCopyWith<$Res> {
  __$DislikedCopyWithImpl(_Disliked _value, $Res Function(_Disliked) _then)
      : super(_value, (v) => _then(v as _Disliked));

  @override
  _Disliked get _value => super._value as _Disliked;
}

/// @nodoc

class _$_Disliked implements _Disliked {
  const _$_Disliked();

  @override
  String toString() {
    return 'LikePetState.disliked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Disliked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() liked,
    required TResult Function() disliked,
    required TResult Function() fetching,
    required TResult Function() unknown,
    required TResult Function(String errorMessage) error,
  }) {
    return disliked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? liked,
    TResult Function()? disliked,
    TResult Function()? fetching,
    TResult Function()? unknown,
    TResult Function(String errorMessage)? error,
  }) {
    return disliked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? liked,
    TResult Function()? disliked,
    TResult Function()? fetching,
    TResult Function()? unknown,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (disliked != null) {
      return disliked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Liked value) liked,
    required TResult Function(_Disliked value) disliked,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Error value) error,
  }) {
    return disliked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Liked value)? liked,
    TResult Function(_Disliked value)? disliked,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Error value)? error,
  }) {
    return disliked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Liked value)? liked,
    TResult Function(_Disliked value)? disliked,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (disliked != null) {
      return disliked(this);
    }
    return orElse();
  }
}

abstract class _Disliked implements LikePetState {
  const factory _Disliked() = _$_Disliked;
}

/// @nodoc
abstract class _$FetchingCopyWith<$Res> {
  factory _$FetchingCopyWith(_Fetching value, $Res Function(_Fetching) then) =
      __$FetchingCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchingCopyWithImpl<$Res> extends _$LikePetStateCopyWithImpl<$Res>
    implements _$FetchingCopyWith<$Res> {
  __$FetchingCopyWithImpl(_Fetching _value, $Res Function(_Fetching) _then)
      : super(_value, (v) => _then(v as _Fetching));

  @override
  _Fetching get _value => super._value as _Fetching;
}

/// @nodoc

class _$_Fetching implements _Fetching {
  const _$_Fetching();

  @override
  String toString() {
    return 'LikePetState.fetching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Fetching);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() liked,
    required TResult Function() disliked,
    required TResult Function() fetching,
    required TResult Function() unknown,
    required TResult Function(String errorMessage) error,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? liked,
    TResult Function()? disliked,
    TResult Function()? fetching,
    TResult Function()? unknown,
    TResult Function(String errorMessage)? error,
  }) {
    return fetching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? liked,
    TResult Function()? disliked,
    TResult Function()? fetching,
    TResult Function()? unknown,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Liked value) liked,
    required TResult Function(_Disliked value) disliked,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Error value) error,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Liked value)? liked,
    TResult Function(_Disliked value)? disliked,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Error value)? error,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Liked value)? liked,
    TResult Function(_Disliked value)? disliked,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class _Fetching implements LikePetState {
  const factory _Fetching() = _$_Fetching;
}

/// @nodoc
abstract class _$UnknownCopyWith<$Res> {
  factory _$UnknownCopyWith(_Unknown value, $Res Function(_Unknown) then) =
      __$UnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnknownCopyWithImpl<$Res> extends _$LikePetStateCopyWithImpl<$Res>
    implements _$UnknownCopyWith<$Res> {
  __$UnknownCopyWithImpl(_Unknown _value, $Res Function(_Unknown) _then)
      : super(_value, (v) => _then(v as _Unknown));

  @override
  _Unknown get _value => super._value as _Unknown;
}

/// @nodoc

class _$_Unknown implements _Unknown {
  const _$_Unknown();

  @override
  String toString() {
    return 'LikePetState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() liked,
    required TResult Function() disliked,
    required TResult Function() fetching,
    required TResult Function() unknown,
    required TResult Function(String errorMessage) error,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? liked,
    TResult Function()? disliked,
    TResult Function()? fetching,
    TResult Function()? unknown,
    TResult Function(String errorMessage)? error,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? liked,
    TResult Function()? disliked,
    TResult Function()? fetching,
    TResult Function()? unknown,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Liked value) liked,
    required TResult Function(_Disliked value) disliked,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Error value) error,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Liked value)? liked,
    TResult Function(_Disliked value)? disliked,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Error value)? error,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Liked value)? liked,
    TResult Function(_Disliked value)? disliked,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements LikePetState {
  const factory _Unknown() = _$_Unknown;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$LikePetStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_Error(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'LikePetState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() liked,
    required TResult Function() disliked,
    required TResult Function() fetching,
    required TResult Function() unknown,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? liked,
    TResult Function()? disliked,
    TResult Function()? fetching,
    TResult Function()? unknown,
    TResult Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? liked,
    TResult Function()? disliked,
    TResult Function()? fetching,
    TResult Function()? unknown,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Liked value) liked,
    required TResult Function(_Disliked value) disliked,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Liked value)? liked,
    TResult Function(_Disliked value)? disliked,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Liked value)? liked,
    TResult Function(_Disliked value)? disliked,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LikePetState {
  const factory _Error(String errorMessage) = _$_Error;

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
