// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewUserData _$NewUserDataFromJson(Map<String, dynamic> json) {
  return _NewUserData.fromJson(json);
}

/// @nodoc
class _$NewUserDataTearOff {
  const _$NewUserDataTearOff();

  _NewUserData call(
      {required String username,
      required String firstName,
      required String lastName,
      required String email,
      required String password}) {
    return _NewUserData(
      username: username,
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
    );
  }

  NewUserData fromJson(Map<String, Object> json) {
    return NewUserData.fromJson(json);
  }
}

/// @nodoc
const $NewUserData = _$NewUserDataTearOff();

/// @nodoc
mixin _$NewUserData {
  String get username => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewUserDataCopyWith<NewUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewUserDataCopyWith<$Res> {
  factory $NewUserDataCopyWith(
          NewUserData value, $Res Function(NewUserData) then) =
      _$NewUserDataCopyWithImpl<$Res>;
  $Res call(
      {String username,
      String firstName,
      String lastName,
      String email,
      String password});
}

/// @nodoc
class _$NewUserDataCopyWithImpl<$Res> implements $NewUserDataCopyWith<$Res> {
  _$NewUserDataCopyWithImpl(this._value, this._then);

  final NewUserData _value;
  // ignore: unused_field
  final $Res Function(NewUserData) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NewUserDataCopyWith<$Res>
    implements $NewUserDataCopyWith<$Res> {
  factory _$NewUserDataCopyWith(
          _NewUserData value, $Res Function(_NewUserData) then) =
      __$NewUserDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String username,
      String firstName,
      String lastName,
      String email,
      String password});
}

/// @nodoc
class __$NewUserDataCopyWithImpl<$Res> extends _$NewUserDataCopyWithImpl<$Res>
    implements _$NewUserDataCopyWith<$Res> {
  __$NewUserDataCopyWithImpl(
      _NewUserData _value, $Res Function(_NewUserData) _then)
      : super(_value, (v) => _then(v as _NewUserData));

  @override
  _NewUserData get _value => super._value as _NewUserData;

  @override
  $Res call({
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_NewUserData(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewUserData implements _NewUserData {
  const _$_NewUserData(
      {required this.username,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.password});

  factory _$_NewUserData.fromJson(Map<String, dynamic> json) =>
      _$$_NewUserDataFromJson(json);

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
    return 'NewUserData(username: $username, firstName: $firstName, lastName: $lastName, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewUserData &&
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
  _$NewUserDataCopyWith<_NewUserData> get copyWith =>
      __$NewUserDataCopyWithImpl<_NewUserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewUserDataToJson(this);
  }
}

abstract class _NewUserData implements NewUserData {
  const factory _NewUserData(
      {required String username,
      required String firstName,
      required String lastName,
      required String email,
      required String password}) = _$_NewUserData;

  factory _NewUserData.fromJson(Map<String, dynamic> json) =
      _$_NewUserData.fromJson;

  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get firstName => throw _privateConstructorUsedError;
  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewUserDataCopyWith<_NewUserData> get copyWith =>
      throw _privateConstructorUsedError;
}
