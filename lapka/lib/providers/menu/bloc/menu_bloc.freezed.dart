// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MenuBlocStateTearOff {
  const _$MenuBlocStateTearOff();

  _MenuBlocState call(
      {dynamic authState = const AuthState.unauthenticated(), User? user}) {
    return _MenuBlocState(
      authState: authState,
      user: user,
    );
  }
}

/// @nodoc
const $MenuBlocState = _$MenuBlocStateTearOff();

/// @nodoc
mixin _$MenuBlocState {
  dynamic get authState => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuBlocStateCopyWith<MenuBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuBlocStateCopyWith<$Res> {
  factory $MenuBlocStateCopyWith(
          MenuBlocState value, $Res Function(MenuBlocState) then) =
      _$MenuBlocStateCopyWithImpl<$Res>;
  $Res call({dynamic authState, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$MenuBlocStateCopyWithImpl<$Res>
    implements $MenuBlocStateCopyWith<$Res> {
  _$MenuBlocStateCopyWithImpl(this._value, this._then);

  final MenuBlocState _value;
  // ignore: unused_field
  final $Res Function(MenuBlocState) _then;

  @override
  $Res call({
    Object? authState = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      authState: authState == freezed
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as dynamic,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$MenuBlocStateCopyWith<$Res>
    implements $MenuBlocStateCopyWith<$Res> {
  factory _$MenuBlocStateCopyWith(
          _MenuBlocState value, $Res Function(_MenuBlocState) then) =
      __$MenuBlocStateCopyWithImpl<$Res>;
  @override
  $Res call({dynamic authState, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$MenuBlocStateCopyWithImpl<$Res>
    extends _$MenuBlocStateCopyWithImpl<$Res>
    implements _$MenuBlocStateCopyWith<$Res> {
  __$MenuBlocStateCopyWithImpl(
      _MenuBlocState _value, $Res Function(_MenuBlocState) _then)
      : super(_value, (v) => _then(v as _MenuBlocState));

  @override
  _MenuBlocState get _value => super._value as _MenuBlocState;

  @override
  $Res call({
    Object? authState = freezed,
    Object? user = freezed,
  }) {
    return _then(_MenuBlocState(
      authState: authState == freezed ? _value.authState : authState,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_MenuBlocState implements _MenuBlocState {
  const _$_MenuBlocState(
      {this.authState = const AuthState.unauthenticated(), this.user});

  @JsonKey(defaultValue: const AuthState.unauthenticated())
  @override
  final dynamic authState;
  @override
  final User? user;

  @override
  String toString() {
    return 'MenuBlocState(authState: $authState, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MenuBlocState &&
            (identical(other.authState, authState) ||
                const DeepCollectionEquality()
                    .equals(other.authState, authState)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authState) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$MenuBlocStateCopyWith<_MenuBlocState> get copyWith =>
      __$MenuBlocStateCopyWithImpl<_MenuBlocState>(this, _$identity);
}

abstract class _MenuBlocState implements MenuBlocState {
  const factory _MenuBlocState({dynamic authState, User? user}) =
      _$_MenuBlocState;

  @override
  dynamic get authState => throw _privateConstructorUsedError;
  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MenuBlocStateCopyWith<_MenuBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
