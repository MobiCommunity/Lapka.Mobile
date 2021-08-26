// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shelter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Shelter _$ShelterFromJson(Map<String, dynamic> json) {
  return _Shelter.fromJson(json);
}

/// @nodoc
class _$ShelterTearOff {
  const _$ShelterTearOff();

  _Shelter call(
      {String? id,
      String? name,
      ShelterAddress? address,
      String? phoneNumber,
      String? email}) {
    return _Shelter(
      id: id,
      name: name,
      address: address,
      phoneNumber: phoneNumber,
      email: email,
    );
  }

  Shelter fromJson(Map<String, Object> json) {
    return Shelter.fromJson(json);
  }
}

/// @nodoc
const $Shelter = _$ShelterTearOff();

/// @nodoc
mixin _$Shelter {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  ShelterAddress? get address => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShelterCopyWith<Shelter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShelterCopyWith<$Res> {
  factory $ShelterCopyWith(Shelter value, $Res Function(Shelter) then) =
      _$ShelterCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      ShelterAddress? address,
      String? phoneNumber,
      String? email});

  $ShelterAddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$ShelterCopyWithImpl<$Res> implements $ShelterCopyWith<$Res> {
  _$ShelterCopyWithImpl(this._value, this._then);

  final Shelter _value;
  // ignore: unused_field
  final $Res Function(Shelter) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as ShelterAddress?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ShelterAddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $ShelterAddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc
abstract class _$ShelterCopyWith<$Res> implements $ShelterCopyWith<$Res> {
  factory _$ShelterCopyWith(_Shelter value, $Res Function(_Shelter) then) =
      __$ShelterCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      ShelterAddress? address,
      String? phoneNumber,
      String? email});

  @override
  $ShelterAddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$ShelterCopyWithImpl<$Res> extends _$ShelterCopyWithImpl<$Res>
    implements _$ShelterCopyWith<$Res> {
  __$ShelterCopyWithImpl(_Shelter _value, $Res Function(_Shelter) _then)
      : super(_value, (v) => _then(v as _Shelter));

  @override
  _Shelter get _value => super._value as _Shelter;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_Shelter(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as ShelterAddress?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Shelter implements _Shelter {
  const _$_Shelter(
      {this.id, this.name, this.address, this.phoneNumber, this.email});

  factory _$_Shelter.fromJson(Map<String, dynamic> json) =>
      _$_$_ShelterFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final ShelterAddress? address;
  @override
  final String? phoneNumber;
  @override
  final String? email;

  @override
  String toString() {
    return 'Shelter(id: $id, name: $name, address: $address, phoneNumber: $phoneNumber, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Shelter &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$ShelterCopyWith<_Shelter> get copyWith =>
      __$ShelterCopyWithImpl<_Shelter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShelterToJson(this);
  }
}

abstract class _Shelter implements Shelter {
  const factory _Shelter(
      {String? id,
      String? name,
      ShelterAddress? address,
      String? phoneNumber,
      String? email}) = _$_Shelter;

  factory _Shelter.fromJson(Map<String, dynamic> json) = _$_Shelter.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  ShelterAddress? get address => throw _privateConstructorUsedError;
  @override
  String? get phoneNumber => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShelterCopyWith<_Shelter> get copyWith =>
      throw _privateConstructorUsedError;
}
