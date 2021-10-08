// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Token _$TokenFromJson(Map<String, dynamic> json) {
  return _Token.fromJson(json);
}

/// @nodoc
class _$TokenTearOff {
  const _$TokenTearOff();

  _Token call(
      {@JsonKey(name: 'accessToken', defaultValue: '')
          required String accessToken,
      @JsonKey(name: 'refreshToken', defaultValue: '')
          required String refreshToken,
      @JsonKey(name: 'expires', defaultValue: -1)
          int? expires}) {
    return _Token(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expires: expires,
    );
  }

  Token fromJson(Map<String, Object> json) {
    return Token.fromJson(json);
  }
}

/// @nodoc
const $Token = _$TokenTearOff();

/// @nodoc
mixin _$Token {
  @JsonKey(name: 'accessToken', defaultValue: '')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refreshToken', defaultValue: '')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires', defaultValue: -1)
  int? get expires => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenCopyWith<Token> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'accessToken', defaultValue: '') String accessToken,
      @JsonKey(name: 'refreshToken', defaultValue: '') String refreshToken,
      @JsonKey(name: 'expires', defaultValue: -1) int? expires});
}

/// @nodoc
class _$TokenCopyWithImpl<$Res> implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  final Token _value;
  // ignore: unused_field
  final $Res Function(Token) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? expires = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expires: expires == freezed
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$TokenCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$TokenCopyWith(_Token value, $Res Function(_Token) then) =
      __$TokenCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'accessToken', defaultValue: '') String accessToken,
      @JsonKey(name: 'refreshToken', defaultValue: '') String refreshToken,
      @JsonKey(name: 'expires', defaultValue: -1) int? expires});
}

/// @nodoc
class __$TokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res>
    implements _$TokenCopyWith<$Res> {
  __$TokenCopyWithImpl(_Token _value, $Res Function(_Token) _then)
      : super(_value, (v) => _then(v as _Token));

  @override
  _Token get _value => super._value as _Token;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? expires = freezed,
  }) {
    return _then(_Token(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expires: expires == freezed
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Token implements _Token {
  const _$_Token(
      {@JsonKey(name: 'accessToken', defaultValue: '')
          required this.accessToken,
      @JsonKey(name: 'refreshToken', defaultValue: '')
          required this.refreshToken,
      @JsonKey(name: 'expires', defaultValue: -1)
          this.expires});

  factory _$_Token.fromJson(Map<String, dynamic> json) =>
      _$$_TokenFromJson(json);

  @override
  @JsonKey(name: 'accessToken', defaultValue: '')
  final String accessToken;
  @override
  @JsonKey(name: 'refreshToken', defaultValue: '')
  final String refreshToken;
  @override
  @JsonKey(name: 'expires', defaultValue: -1)
  final int? expires;

  @override
  String toString() {
    return 'Token(accessToken: $accessToken, refreshToken: $refreshToken, expires: $expires)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Token &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.expires, expires) ||
                const DeepCollectionEquality().equals(other.expires, expires)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(expires);

  @JsonKey(ignore: true)
  @override
  _$TokenCopyWith<_Token> get copyWith =>
      __$TokenCopyWithImpl<_Token>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenToJson(this);
  }
}

abstract class _Token implements Token {
  const factory _Token(
      {@JsonKey(name: 'accessToken', defaultValue: '')
          required String accessToken,
      @JsonKey(name: 'refreshToken', defaultValue: '')
          required String refreshToken,
      @JsonKey(name: 'expires', defaultValue: -1)
          int? expires}) = _$_Token;

  factory _Token.fromJson(Map<String, dynamic> json) = _$_Token.fromJson;

  @override
  @JsonKey(name: 'accessToken', defaultValue: '')
  String get accessToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'refreshToken', defaultValue: '')
  String get refreshToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'expires', defaultValue: -1)
  int? get expires => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TokenCopyWith<_Token> get copyWith => throw _privateConstructorUsedError;
}
