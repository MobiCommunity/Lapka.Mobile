// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'global_loader_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GlobalLoaderStateTearOff {
  const _$GlobalLoaderStateTearOff();

  Busy busy() {
    return const Busy();
  }

  Idle idle() {
    return const Idle();
  }
}

/// @nodoc
const $GlobalLoaderState = _$GlobalLoaderStateTearOff();

/// @nodoc
mixin _$GlobalLoaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() busy,
    required TResult Function() idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? busy,
    TResult Function()? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? busy,
    TResult Function()? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Busy value) busy,
    required TResult Function(Idle value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Busy value)? busy,
    TResult Function(Idle value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Busy value)? busy,
    TResult Function(Idle value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalLoaderStateCopyWith<$Res> {
  factory $GlobalLoaderStateCopyWith(
          GlobalLoaderState value, $Res Function(GlobalLoaderState) then) =
      _$GlobalLoaderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GlobalLoaderStateCopyWithImpl<$Res>
    implements $GlobalLoaderStateCopyWith<$Res> {
  _$GlobalLoaderStateCopyWithImpl(this._value, this._then);

  final GlobalLoaderState _value;
  // ignore: unused_field
  final $Res Function(GlobalLoaderState) _then;
}

/// @nodoc
abstract class $BusyCopyWith<$Res> {
  factory $BusyCopyWith(Busy value, $Res Function(Busy) then) =
      _$BusyCopyWithImpl<$Res>;
}

/// @nodoc
class _$BusyCopyWithImpl<$Res> extends _$GlobalLoaderStateCopyWithImpl<$Res>
    implements $BusyCopyWith<$Res> {
  _$BusyCopyWithImpl(Busy _value, $Res Function(Busy) _then)
      : super(_value, (v) => _then(v as Busy));

  @override
  Busy get _value => super._value as Busy;
}

/// @nodoc

class _$Busy implements Busy {
  const _$Busy();

  @override
  String toString() {
    return 'GlobalLoaderState.busy()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Busy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() busy,
    required TResult Function() idle,
  }) {
    return busy();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? busy,
    TResult Function()? idle,
  }) {
    return busy?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? busy,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (busy != null) {
      return busy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Busy value) busy,
    required TResult Function(Idle value) idle,
  }) {
    return busy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Busy value)? busy,
    TResult Function(Idle value)? idle,
  }) {
    return busy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Busy value)? busy,
    TResult Function(Idle value)? idle,
    required TResult orElse(),
  }) {
    if (busy != null) {
      return busy(this);
    }
    return orElse();
  }
}

abstract class Busy implements GlobalLoaderState {
  const factory Busy() = _$Busy;
}

/// @nodoc
abstract class $IdleCopyWith<$Res> {
  factory $IdleCopyWith(Idle value, $Res Function(Idle) then) =
      _$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdleCopyWithImpl<$Res> extends _$GlobalLoaderStateCopyWithImpl<$Res>
    implements $IdleCopyWith<$Res> {
  _$IdleCopyWithImpl(Idle _value, $Res Function(Idle) _then)
      : super(_value, (v) => _then(v as Idle));

  @override
  Idle get _value => super._value as Idle;
}

/// @nodoc

class _$Idle implements Idle {
  const _$Idle();

  @override
  String toString() {
    return 'GlobalLoaderState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() busy,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? busy,
    TResult Function()? idle,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? busy,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Busy value) busy,
    required TResult Function(Idle value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Busy value)? busy,
    TResult Function(Idle value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Busy value)? busy,
    TResult Function(Idle value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle implements GlobalLoaderState {
  const factory Idle() = _$Idle;
}
