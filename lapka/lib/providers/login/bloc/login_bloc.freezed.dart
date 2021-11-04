// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  _SingIn singIn(String name, String password) {
    return _SingIn(
      name,
      password,
    );
  }

  _SingInGoogle singInGoogle() {
    return const _SingInGoogle();
  }

  _SingInFb singInFb() {
    return const _SingInFb();
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String password) singIn,
    required TResult Function() singInGoogle,
    required TResult Function() singInFb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function()? singInGoogle,
    TResult Function()? singInFb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function()? singInGoogle,
    TResult Function()? singInFb,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingIn value) singIn,
    required TResult Function(_SingInGoogle value) singInGoogle,
    required TResult Function(_SingInFb value) singInFb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$SingInCopyWith<$Res> {
  factory _$SingInCopyWith(_SingIn value, $Res Function(_SingIn) then) =
      __$SingInCopyWithImpl<$Res>;
  $Res call({String name, String password});
}

/// @nodoc
class __$SingInCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$SingInCopyWith<$Res> {
  __$SingInCopyWithImpl(_SingIn _value, $Res Function(_SingIn) _then)
      : super(_value, (v) => _then(v as _SingIn));

  @override
  _SingIn get _value => super._value as _SingIn;

  @override
  $Res call({
    Object? name = freezed,
    Object? password = freezed,
  }) {
    return _then(_SingIn(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SingIn with DiagnosticableTreeMixin implements _SingIn {
  const _$_SingIn(this.name, this.password);

  @override
  final String name;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.singIn(name: $name, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.singIn'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SingIn &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$SingInCopyWith<_SingIn> get copyWith =>
      __$SingInCopyWithImpl<_SingIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String password) singIn,
    required TResult Function() singInGoogle,
    required TResult Function() singInFb,
  }) {
    return singIn(name, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function()? singInGoogle,
    TResult Function()? singInFb,
  }) {
    return singIn?.call(name, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function()? singInGoogle,
    TResult Function()? singInFb,
    required TResult orElse(),
  }) {
    if (singIn != null) {
      return singIn(name, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingIn value) singIn,
    required TResult Function(_SingInGoogle value) singInGoogle,
    required TResult Function(_SingInFb value) singInFb,
  }) {
    return singIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
  }) {
    return singIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
    required TResult orElse(),
  }) {
    if (singIn != null) {
      return singIn(this);
    }
    return orElse();
  }
}

abstract class _SingIn implements LoginEvent {
  const factory _SingIn(String name, String password) = _$_SingIn;

  String get name => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SingInCopyWith<_SingIn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SingInGoogleCopyWith<$Res> {
  factory _$SingInGoogleCopyWith(
          _SingInGoogle value, $Res Function(_SingInGoogle) then) =
      __$SingInGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$SingInGoogleCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$SingInGoogleCopyWith<$Res> {
  __$SingInGoogleCopyWithImpl(
      _SingInGoogle _value, $Res Function(_SingInGoogle) _then)
      : super(_value, (v) => _then(v as _SingInGoogle));

  @override
  _SingInGoogle get _value => super._value as _SingInGoogle;
}

/// @nodoc

class _$_SingInGoogle with DiagnosticableTreeMixin implements _SingInGoogle {
  const _$_SingInGoogle();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.singInGoogle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LoginEvent.singInGoogle'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SingInGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String password) singIn,
    required TResult Function() singInGoogle,
    required TResult Function() singInFb,
  }) {
    return singInGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function()? singInGoogle,
    TResult Function()? singInFb,
  }) {
    return singInGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function()? singInGoogle,
    TResult Function()? singInFb,
    required TResult orElse(),
  }) {
    if (singInGoogle != null) {
      return singInGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingIn value) singIn,
    required TResult Function(_SingInGoogle value) singInGoogle,
    required TResult Function(_SingInFb value) singInFb,
  }) {
    return singInGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
  }) {
    return singInGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
    required TResult orElse(),
  }) {
    if (singInGoogle != null) {
      return singInGoogle(this);
    }
    return orElse();
  }
}

abstract class _SingInGoogle implements LoginEvent {
  const factory _SingInGoogle() = _$_SingInGoogle;
}

/// @nodoc
abstract class _$SingInFbCopyWith<$Res> {
  factory _$SingInFbCopyWith(_SingInFb value, $Res Function(_SingInFb) then) =
      __$SingInFbCopyWithImpl<$Res>;
}

/// @nodoc
class __$SingInFbCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$SingInFbCopyWith<$Res> {
  __$SingInFbCopyWithImpl(_SingInFb _value, $Res Function(_SingInFb) _then)
      : super(_value, (v) => _then(v as _SingInFb));

  @override
  _SingInFb get _value => super._value as _SingInFb;
}

/// @nodoc

class _$_SingInFb with DiagnosticableTreeMixin implements _SingInFb {
  const _$_SingInFb();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.singInFb()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LoginEvent.singInFb'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SingInFb);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String password) singIn,
    required TResult Function() singInGoogle,
    required TResult Function() singInFb,
  }) {
    return singInFb();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function()? singInGoogle,
    TResult Function()? singInFb,
  }) {
    return singInFb?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function()? singInGoogle,
    TResult Function()? singInFb,
    required TResult orElse(),
  }) {
    if (singInFb != null) {
      return singInFb();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingIn value) singIn,
    required TResult Function(_SingInGoogle value) singInGoogle,
    required TResult Function(_SingInFb value) singInFb,
  }) {
    return singInFb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
  }) {
    return singInFb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
    required TResult orElse(),
  }) {
    if (singInFb != null) {
      return singInFb(this);
    }
    return orElse();
  }
}

abstract class _SingInFb implements LoginEvent {
  const factory _SingInFb() = _$_SingInFb;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _Idle idle() {
    return const _Idle();
  }

  _SigningIn signingIn() {
    return const _SigningIn();
  }

  _Success success() {
    return const _Success();
  }

  _Error error(NetworkExceptions exception) {
    return _Error(
      exception,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() signingIn,
    required TResult Function() success,
    required TResult Function(NetworkExceptions exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? signingIn,
    TResult Function()? success,
    TResult Function(NetworkExceptions exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? signingIn,
    TResult Function()? success,
    TResult Function(NetworkExceptions exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_SigningIn value) signingIn,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_SigningIn value)? signingIn,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_SigningIn value)? signingIn,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$IdleCopyWith<$Res> {
  factory _$IdleCopyWith(_Idle value, $Res Function(_Idle) then) =
      __$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$IdleCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$IdleCopyWith<$Res> {
  __$IdleCopyWithImpl(_Idle _value, $Res Function(_Idle) _then)
      : super(_value, (v) => _then(v as _Idle));

  @override
  _Idle get _value => super._value as _Idle;
}

/// @nodoc

class _$_Idle with DiagnosticableTreeMixin implements _Idle {
  const _$_Idle();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.idle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LoginState.idle'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() signingIn,
    required TResult Function() success,
    required TResult Function(NetworkExceptions exception) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? signingIn,
    TResult Function()? success,
    TResult Function(NetworkExceptions exception)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? signingIn,
    TResult Function()? success,
    TResult Function(NetworkExceptions exception)? error,
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
    required TResult Function(_Idle value) idle,
    required TResult Function(_SigningIn value) signingIn,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_SigningIn value)? signingIn,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_SigningIn value)? signingIn,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements LoginState {
  const factory _Idle() = _$_Idle;
}

/// @nodoc
abstract class _$SigningInCopyWith<$Res> {
  factory _$SigningInCopyWith(
          _SigningIn value, $Res Function(_SigningIn) then) =
      __$SigningInCopyWithImpl<$Res>;
}

/// @nodoc
class __$SigningInCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$SigningInCopyWith<$Res> {
  __$SigningInCopyWithImpl(_SigningIn _value, $Res Function(_SigningIn) _then)
      : super(_value, (v) => _then(v as _SigningIn));

  @override
  _SigningIn get _value => super._value as _SigningIn;
}

/// @nodoc

class _$_SigningIn with DiagnosticableTreeMixin implements _SigningIn {
  const _$_SigningIn();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.signingIn()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LoginState.signingIn'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SigningIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() signingIn,
    required TResult Function() success,
    required TResult Function(NetworkExceptions exception) error,
  }) {
    return signingIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? signingIn,
    TResult Function()? success,
    TResult Function(NetworkExceptions exception)? error,
  }) {
    return signingIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? signingIn,
    TResult Function()? success,
    TResult Function(NetworkExceptions exception)? error,
    required TResult orElse(),
  }) {
    if (signingIn != null) {
      return signingIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_SigningIn value) signingIn,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return signingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_SigningIn value)? signingIn,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return signingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_SigningIn value)? signingIn,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (signingIn != null) {
      return signingIn(this);
    }
    return orElse();
  }
}

abstract class _SigningIn implements LoginState {
  const factory _SigningIn() = _$_SigningIn;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;
}

/// @nodoc

class _$_Success with DiagnosticableTreeMixin implements _Success {
  const _$_Success();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LoginState.success'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() signingIn,
    required TResult Function() success,
    required TResult Function(NetworkExceptions exception) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? signingIn,
    TResult Function()? success,
    TResult Function(NetworkExceptions exception)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? signingIn,
    TResult Function()? success,
    TResult Function(NetworkExceptions exception)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_SigningIn value) signingIn,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_SigningIn value)? signingIn,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_SigningIn value)? signingIn,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LoginState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({NetworkExceptions exception});

  $NetworkExceptionsCopyWith<$Res> get exception;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_Error(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  @override
  $NetworkExceptionsCopyWith<$Res> get exception {
    return $NetworkExceptionsCopyWith<$Res>(_value.exception, (value) {
      return _then(_value.copyWith(exception: value));
    });
  }
}

/// @nodoc

class _$_Error with DiagnosticableTreeMixin implements _Error {
  const _$_Error(this.exception);

  @override
  final NetworkExceptions exception;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.error(exception: $exception)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.error'))
      ..add(DiagnosticsProperty('exception', exception));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() signingIn,
    required TResult Function() success,
    required TResult Function(NetworkExceptions exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? signingIn,
    TResult Function()? success,
    TResult Function(NetworkExceptions exception)? error,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? signingIn,
    TResult Function()? success,
    TResult Function(NetworkExceptions exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_SigningIn value) signingIn,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_SigningIn value)? signingIn,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_SigningIn value)? signingIn,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LoginState {
  const factory _Error(NetworkExceptions exception) = _$_Error;

  NetworkExceptions get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
