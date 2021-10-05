// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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

class _$_SingIn implements _SingIn {
  const _$_SingIn(this.name, this.password);

  @override
  final String name;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.singIn(name: $name, password: $password)';
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

class _$_SingInGoogle implements _SingInGoogle {
  const _$_SingInGoogle(this.accessToken);

  @override
  final String accessToken;

  @override
  String toString() {
    return 'AuthenticationEvent.singInGoogle(accessToken: $accessToken)';
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

class _$_SingInFb implements _SingInFb {
  const _$_SingInFb(this.accessToken);

  @override
  final String accessToken;

  @override
  String toString() {
    return 'AuthenticationEvent.singInFb(accessToken: $accessToken)';
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

class _$_SingUp implements _SingUp {
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
  String toString() {
    return 'AuthenticationEvent.signUp(username: $username, firstName: $firstName, lastName: $lastName, email: $email, password: $password)';
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

class _$_LogOut implements _LogOut {
  const _$_LogOut();

  @override
  String toString() {
    return 'AuthenticationEvent.logOut()';
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

class _$_AutoLogin implements _AutoLogin {
  const _$_AutoLogin();

  @override
  String toString() {
    return 'AuthenticationEvent.autoLogin()';
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

  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }

  _Authenticated authenticated(String token) {
    return _Authenticated(
      token,
    );
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function(String token) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(String token)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
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
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

/// @nodoc

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'AuthenticationState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function(String token) authenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(String token)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticated value) authenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthenticationState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_Authenticated(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.token);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticated &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function(String token) authenticated,
  }) {
    return authenticated(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(String token)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthenticationState {
  const factory _Authenticated(String token) = _$_Authenticated;

  String get token => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
