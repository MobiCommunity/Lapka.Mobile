// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

  _SingIn singIn(String name, String password) {
    return _SingIn(
      name,
      password,
    );
  }

  _SingInGoogle singInGoogle(String accessToken) {
    return _SingInGoogle(
      accessToken,
    );
  }

  _SingInFb singInFb(String accessToken) {
    return _SingInFb(
      accessToken,
    );
  }

  _SingUp signUp(String username, String firstName, String lastName,
      String email, String password) {
    return _SingUp(
      username,
      firstName,
      lastName,
      email,
      password,
    );
  }

  _LogOut logOut() {
    return const _LogOut();
  }

  _AutoLogin autoLogin() {
    return const _AutoLogin();
  }
}

/// @nodoc
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String password) singIn,
    required TResult Function(String accessToken) singInGoogle,
    required TResult Function(String accessToken) singInFb,
    required TResult Function(String username, String firstName,
            String lastName, String email, String password)
        signUp,
    required TResult Function() logOut,
    required TResult Function() autoLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function(String accessToken)? singInGoogle,
    TResult Function(String accessToken)? singInFb,
    TResult Function(String username, String firstName, String lastName,
            String email, String password)?
        signUp,
    TResult Function()? logOut,
    TResult Function()? autoLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function(String accessToken)? singInGoogle,
    TResult Function(String accessToken)? singInFb,
    TResult Function(String username, String firstName, String lastName,
            String email, String password)?
        signUp,
    TResult Function()? logOut,
    TResult Function()? autoLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingIn value) singIn,
    required TResult Function(_SingInGoogle value) singInGoogle,
    required TResult Function(_SingInFb value) singInFb,
    required TResult Function(_SingUp value) signUp,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_AutoLogin value) autoLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
    TResult Function(_SingUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_AutoLogin value)? autoLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
    TResult Function(_SingUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class _$SingInCopyWith<$Res> {
  factory _$SingInCopyWith(_SingIn value, $Res Function(_SingIn) then) =
      __$SingInCopyWithImpl<$Res>;
  $Res call({String name, String password});
}

/// @nodoc
class __$SingInCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
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
    return 'AuthenticationEvent.singIn(name: $name, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationEvent.singIn'))
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
    required TResult Function(String accessToken) singInGoogle,
    required TResult Function(String accessToken) singInFb,
    required TResult Function(String username, String firstName,
            String lastName, String email, String password)
        signUp,
    required TResult Function() logOut,
    required TResult Function() autoLogin,
  }) {
    return singIn(name, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function(String accessToken)? singInGoogle,
    TResult Function(String accessToken)? singInFb,
    TResult Function(String username, String firstName, String lastName,
            String email, String password)?
        signUp,
    TResult Function()? logOut,
    TResult Function()? autoLogin,
  }) {
    return singIn?.call(name, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function(String accessToken)? singInGoogle,
    TResult Function(String accessToken)? singInFb,
    TResult Function(String username, String firstName, String lastName,
            String email, String password)?
        signUp,
    TResult Function()? logOut,
    TResult Function()? autoLogin,
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
    required TResult Function(_SingUp value) signUp,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_AutoLogin value) autoLogin,
  }) {
    return singIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
    TResult Function(_SingUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_AutoLogin value)? autoLogin,
  }) {
    return singIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
    TResult Function(_SingUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) {
    if (singIn != null) {
      return singIn(this);
    }
    return orElse();
  }
}

abstract class _SingIn implements AuthenticationEvent {
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
  $Res call({String accessToken});
}

/// @nodoc
class __$SingInGoogleCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$SingInGoogleCopyWith<$Res> {
  __$SingInGoogleCopyWithImpl(
      _SingInGoogle _value, $Res Function(_SingInGoogle) _then)
      : super(_value, (v) => _then(v as _SingInGoogle));

  @override
  _SingInGoogle get _value => super._value as _SingInGoogle;

  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(_SingInGoogle(
      accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SingInGoogle with DiagnosticableTreeMixin implements _SingInGoogle {
  const _$_SingInGoogle(this.accessToken);

  @override
  final String accessToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationEvent.singInGoogle(accessToken: $accessToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationEvent.singInGoogle'))
      ..add(DiagnosticsProperty('accessToken', accessToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SingInGoogle &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accessToken);

  @JsonKey(ignore: true)
  @override
  _$SingInGoogleCopyWith<_SingInGoogle> get copyWith =>
      __$SingInGoogleCopyWithImpl<_SingInGoogle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String password) singIn,
    required TResult Function(String accessToken) singInGoogle,
    required TResult Function(String accessToken) singInFb,
    required TResult Function(String username, String firstName,
            String lastName, String email, String password)
        signUp,
    required TResult Function() logOut,
    required TResult Function() autoLogin,
  }) {
    return singInGoogle(accessToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function(String accessToken)? singInGoogle,
    TResult Function(String accessToken)? singInFb,
    TResult Function(String username, String firstName, String lastName,
            String email, String password)?
        signUp,
    TResult Function()? logOut,
    TResult Function()? autoLogin,
  }) {
    return singInGoogle?.call(accessToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function(String accessToken)? singInGoogle,
    TResult Function(String accessToken)? singInFb,
    TResult Function(String username, String firstName, String lastName,
            String email, String password)?
        signUp,
    TResult Function()? logOut,
    TResult Function()? autoLogin,
    required TResult orElse(),
  }) {
    if (singInGoogle != null) {
      return singInGoogle(accessToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingIn value) singIn,
    required TResult Function(_SingInGoogle value) singInGoogle,
    required TResult Function(_SingInFb value) singInFb,
    required TResult Function(_SingUp value) signUp,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_AutoLogin value) autoLogin,
  }) {
    return singInGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
    TResult Function(_SingUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_AutoLogin value)? autoLogin,
  }) {
    return singInGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
    TResult Function(_SingUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) {
    if (singInGoogle != null) {
      return singInGoogle(this);
    }
    return orElse();
  }
}

abstract class _SingInGoogle implements AuthenticationEvent {
  const factory _SingInGoogle(String accessToken) = _$_SingInGoogle;

  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SingInGoogleCopyWith<_SingInGoogle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SingInFbCopyWith<$Res> {
  factory _$SingInFbCopyWith(_SingInFb value, $Res Function(_SingInFb) then) =
      __$SingInFbCopyWithImpl<$Res>;
  $Res call({String accessToken});
}

/// @nodoc
class __$SingInFbCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$SingInFbCopyWith<$Res> {
  __$SingInFbCopyWithImpl(_SingInFb _value, $Res Function(_SingInFb) _then)
      : super(_value, (v) => _then(v as _SingInFb));

  @override
  _SingInFb get _value => super._value as _SingInFb;

  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(_SingInFb(
      accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SingInFb with DiagnosticableTreeMixin implements _SingInFb {
  const _$_SingInFb(this.accessToken);

  @override
  final String accessToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationEvent.singInFb(accessToken: $accessToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationEvent.singInFb'))
      ..add(DiagnosticsProperty('accessToken', accessToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SingInFb &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accessToken);

  @JsonKey(ignore: true)
  @override
  _$SingInFbCopyWith<_SingInFb> get copyWith =>
      __$SingInFbCopyWithImpl<_SingInFb>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String password) singIn,
    required TResult Function(String accessToken) singInGoogle,
    required TResult Function(String accessToken) singInFb,
    required TResult Function(String username, String firstName,
            String lastName, String email, String password)
        signUp,
    required TResult Function() logOut,
    required TResult Function() autoLogin,
  }) {
    return singInFb(accessToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function(String accessToken)? singInGoogle,
    TResult Function(String accessToken)? singInFb,
    TResult Function(String username, String firstName, String lastName,
            String email, String password)?
        signUp,
    TResult Function()? logOut,
    TResult Function()? autoLogin,
  }) {
    return singInFb?.call(accessToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function(String accessToken)? singInGoogle,
    TResult Function(String accessToken)? singInFb,
    TResult Function(String username, String firstName, String lastName,
            String email, String password)?
        signUp,
    TResult Function()? logOut,
    TResult Function()? autoLogin,
    required TResult orElse(),
  }) {
    if (singInFb != null) {
      return singInFb(accessToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingIn value) singIn,
    required TResult Function(_SingInGoogle value) singInGoogle,
    required TResult Function(_SingInFb value) singInFb,
    required TResult Function(_SingUp value) signUp,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_AutoLogin value) autoLogin,
  }) {
    return singInFb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
    TResult Function(_SingUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_AutoLogin value)? autoLogin,
  }) {
    return singInFb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
    TResult Function(_SingUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) {
    if (singInFb != null) {
      return singInFb(this);
    }
    return orElse();
  }
}

abstract class _SingInFb implements AuthenticationEvent {
  const factory _SingInFb(String accessToken) = _$_SingInFb;

  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SingInFbCopyWith<_SingInFb> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SingUpCopyWith<$Res> {
  factory _$SingUpCopyWith(_SingUp value, $Res Function(_SingUp) then) =
      __$SingUpCopyWithImpl<$Res>;
  $Res call(
      {String username,
      String firstName,
      String lastName,
      String email,
      String password});
}

/// @nodoc
class __$SingUpCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$SingUpCopyWith<$Res> {
  __$SingUpCopyWithImpl(_SingUp _value, $Res Function(_SingUp) _then)
      : super(_value, (v) => _then(v as _SingUp));

  @override
  _SingUp get _value => super._value as _SingUp;

  @override
  $Res call({
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_SingUp(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SingUp with DiagnosticableTreeMixin implements _SingUp {
  const _$_SingUp(
      this.username, this.firstName, this.lastName, this.email, this.password);

  @override
  final String username;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationEvent.signUp(username: $username, firstName: $firstName, lastName: $lastName, email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationEvent.signUp'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SingUp &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$SingUpCopyWith<_SingUp> get copyWith =>
      __$SingUpCopyWithImpl<_SingUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String password) singIn,
    required TResult Function(String accessToken) singInGoogle,
    required TResult Function(String accessToken) singInFb,
    required TResult Function(String username, String firstName,
            String lastName, String email, String password)
        signUp,
    required TResult Function() logOut,
    required TResult Function() autoLogin,
  }) {
    return signUp(username, firstName, lastName, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function(String accessToken)? singInGoogle,
    TResult Function(String accessToken)? singInFb,
    TResult Function(String username, String firstName, String lastName,
            String email, String password)?
        signUp,
    TResult Function()? logOut,
    TResult Function()? autoLogin,
  }) {
    return signUp?.call(username, firstName, lastName, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function(String accessToken)? singInGoogle,
    TResult Function(String accessToken)? singInFb,
    TResult Function(String username, String firstName, String lastName,
            String email, String password)?
        signUp,
    TResult Function()? logOut,
    TResult Function()? autoLogin,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(username, firstName, lastName, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingIn value) singIn,
    required TResult Function(_SingInGoogle value) singInGoogle,
    required TResult Function(_SingInFb value) singInFb,
    required TResult Function(_SingUp value) signUp,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_AutoLogin value) autoLogin,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
    TResult Function(_SingUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_AutoLogin value)? autoLogin,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
    TResult Function(_SingUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SingUp implements AuthenticationEvent {
  const factory _SingUp(String username, String firstName, String lastName,
      String email, String password) = _$_SingUp;

  String get username => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SingUpCopyWith<_SingUp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LogOutCopyWith<$Res> {
  factory _$LogOutCopyWith(_LogOut value, $Res Function(_LogOut) then) =
      __$LogOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogOutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$LogOutCopyWith<$Res> {
  __$LogOutCopyWithImpl(_LogOut _value, $Res Function(_LogOut) _then)
      : super(_value, (v) => _then(v as _LogOut));

  @override
  _LogOut get _value => super._value as _LogOut;
}

/// @nodoc

class _$_LogOut with DiagnosticableTreeMixin implements _LogOut {
  const _$_LogOut();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationEvent.logOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthenticationEvent.logOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String password) singIn,
    required TResult Function(String accessToken) singInGoogle,
    required TResult Function(String accessToken) singInFb,
    required TResult Function(String username, String firstName,
            String lastName, String email, String password)
        signUp,
    required TResult Function() logOut,
    required TResult Function() autoLogin,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function(String accessToken)? singInGoogle,
    TResult Function(String accessToken)? singInFb,
    TResult Function(String username, String firstName, String lastName,
            String email, String password)?
        signUp,
    TResult Function()? logOut,
    TResult Function()? autoLogin,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function(String accessToken)? singInGoogle,
    TResult Function(String accessToken)? singInFb,
    TResult Function(String username, String firstName, String lastName,
            String email, String password)?
        signUp,
    TResult Function()? logOut,
    TResult Function()? autoLogin,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingIn value) singIn,
    required TResult Function(_SingInGoogle value) singInGoogle,
    required TResult Function(_SingInFb value) singInFb,
    required TResult Function(_SingUp value) signUp,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_AutoLogin value) autoLogin,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
    TResult Function(_SingUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_AutoLogin value)? autoLogin,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
    TResult Function(_SingUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements AuthenticationEvent {
  const factory _LogOut() = _$_LogOut;
}

/// @nodoc
abstract class _$AutoLoginCopyWith<$Res> {
  factory _$AutoLoginCopyWith(
          _AutoLogin value, $Res Function(_AutoLogin) then) =
      __$AutoLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$AutoLoginCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$AutoLoginCopyWith<$Res> {
  __$AutoLoginCopyWithImpl(_AutoLogin _value, $Res Function(_AutoLogin) _then)
      : super(_value, (v) => _then(v as _AutoLogin));

  @override
  _AutoLogin get _value => super._value as _AutoLogin;
}

/// @nodoc

class _$_AutoLogin with DiagnosticableTreeMixin implements _AutoLogin {
  const _$_AutoLogin();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationEvent.autoLogin()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationEvent.autoLogin'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AutoLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String password) singIn,
    required TResult Function(String accessToken) singInGoogle,
    required TResult Function(String accessToken) singInFb,
    required TResult Function(String username, String firstName,
            String lastName, String email, String password)
        signUp,
    required TResult Function() logOut,
    required TResult Function() autoLogin,
  }) {
    return autoLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function(String accessToken)? singInGoogle,
    TResult Function(String accessToken)? singInFb,
    TResult Function(String username, String firstName, String lastName,
            String email, String password)?
        signUp,
    TResult Function()? logOut,
    TResult Function()? autoLogin,
  }) {
    return autoLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String password)? singIn,
    TResult Function(String accessToken)? singInGoogle,
    TResult Function(String accessToken)? singInFb,
    TResult Function(String username, String firstName, String lastName,
            String email, String password)?
        signUp,
    TResult Function()? logOut,
    TResult Function()? autoLogin,
    required TResult orElse(),
  }) {
    if (autoLogin != null) {
      return autoLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingIn value) singIn,
    required TResult Function(_SingInGoogle value) singInGoogle,
    required TResult Function(_SingInFb value) singInFb,
    required TResult Function(_SingUp value) signUp,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_AutoLogin value) autoLogin,
  }) {
    return autoLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
    TResult Function(_SingUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_AutoLogin value)? autoLogin,
  }) {
    return autoLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingIn value)? singIn,
    TResult Function(_SingInGoogle value)? singInGoogle,
    TResult Function(_SingInFb value)? singInFb,
    TResult Function(_SingUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) {
    if (autoLogin != null) {
      return autoLogin(this);
    }
    return orElse();
  }
}

abstract class _AutoLogin implements AuthenticationEvent {
  const factory _AutoLogin() = _$_AutoLogin;
}

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  _Idle idle() {
    return const _Idle();
  }

  _Processing processing() {
    return const _Processing();
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
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() processing,
    required TResult Function() success,
    required TResult Function(NetworkExceptions exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
    TResult Function()? success,
    TResult Function(NetworkExceptions exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
    TResult Function()? success,
    TResult Function(NetworkExceptions exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class _$IdleCopyWith<$Res> {
  factory _$IdleCopyWith(_Idle value, $Res Function(_Idle) then) =
      __$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$IdleCopyWithImpl<$Res> extends _$AuthenticationStateCopyWithImpl<$Res>
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
    return 'AuthenticationState.idle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthenticationState.idle'));
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
    required TResult Function() processing,
    required TResult Function() success,
    required TResult Function(NetworkExceptions exception) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
    TResult Function()? success,
    TResult Function(NetworkExceptions exception)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Processing value)? processing,
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

abstract class _Idle implements AuthenticationState {
  const factory _Idle() = _$_Idle;
}

/// @nodoc
abstract class _$ProcessingCopyWith<$Res> {
  factory _$ProcessingCopyWith(
          _Processing value, $Res Function(_Processing) then) =
      __$ProcessingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProcessingCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$ProcessingCopyWith<$Res> {
  __$ProcessingCopyWithImpl(
      _Processing _value, $Res Function(_Processing) _then)
      : super(_value, (v) => _then(v as _Processing));

  @override
  _Processing get _value => super._value as _Processing;
}

/// @nodoc

class _$_Processing with DiagnosticableTreeMixin implements _Processing {
  const _$_Processing();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.processing()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState.processing'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Processing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() processing,
    required TResult Function() success,
    required TResult Function(NetworkExceptions exception) error,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
    TResult Function()? success,
    TResult Function(NetworkExceptions exception)? error,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
    TResult Function()? success,
    TResult Function(NetworkExceptions exception)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _Processing implements AuthenticationState {
  const factory _Processing() = _$_Processing;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
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
    return 'AuthenticationState.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthenticationState.success'));
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
    required TResult Function() processing,
    required TResult Function() success,
    required TResult Function(NetworkExceptions exception) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
    TResult Function()? success,
    TResult Function(NetworkExceptions exception)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Processing value)? processing,
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

abstract class _Success implements AuthenticationState {
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
class __$ErrorCopyWithImpl<$Res> extends _$AuthenticationStateCopyWithImpl<$Res>
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
    return 'AuthenticationState.error(exception: $exception)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState.error'))
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
    required TResult Function() processing,
    required TResult Function() success,
    required TResult Function(NetworkExceptions exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
    TResult Function()? success,
    TResult Function(NetworkExceptions exception)? error,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Processing value)? processing,
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

abstract class _Error implements AuthenticationState {
  const factory _Error(NetworkExceptions exception) = _$_Error;

  NetworkExceptions get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
