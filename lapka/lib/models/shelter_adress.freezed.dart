// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shelter_adress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShelterAddress _$ShelterAddressFromJson(Map<String, dynamic> json) {
  return _ShelterAddress.fromJson(json);
}

/// @nodoc
class _$ShelterAddressTearOff {
  const _$ShelterAddressTearOff();

  _ShelterAddress call(
      {String? name, String? city, String? street, GeoLocation? geoLocation}) {
    return _ShelterAddress(
      name: name,
      city: city,
      street: street,
      geoLocation: geoLocation,
    );
  }

  ShelterAddress fromJson(Map<String, Object> json) {
    return ShelterAddress.fromJson(json);
  }
}

/// @nodoc
const $ShelterAddress = _$ShelterAddressTearOff();

/// @nodoc
mixin _$ShelterAddress {
  String? get name => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  GeoLocation? get geoLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShelterAddressCopyWith<ShelterAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShelterAddressCopyWith<$Res> {
  factory $ShelterAddressCopyWith(
          ShelterAddress value, $Res Function(ShelterAddress) then) =
      _$ShelterAddressCopyWithImpl<$Res>;
  $Res call(
      {String? name, String? city, String? street, GeoLocation? geoLocation});

  $GeoLocationCopyWith<$Res>? get geoLocation;
}

/// @nodoc
class _$ShelterAddressCopyWithImpl<$Res>
    implements $ShelterAddressCopyWith<$Res> {
  _$ShelterAddressCopyWithImpl(this._value, this._then);

  final ShelterAddress _value;
  // ignore: unused_field
  final $Res Function(ShelterAddress) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? geoLocation = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      geoLocation: geoLocation == freezed
          ? _value.geoLocation
          : geoLocation // ignore: cast_nullable_to_non_nullable
              as GeoLocation?,
    ));
  }

  @override
  $GeoLocationCopyWith<$Res>? get geoLocation {
    if (_value.geoLocation == null) {
      return null;
    }

    return $GeoLocationCopyWith<$Res>(_value.geoLocation!, (value) {
      return _then(_value.copyWith(geoLocation: value));
    });
  }
}

/// @nodoc
abstract class _$ShelterAddressCopyWith<$Res>
    implements $ShelterAddressCopyWith<$Res> {
  factory _$ShelterAddressCopyWith(
          _ShelterAddress value, $Res Function(_ShelterAddress) then) =
      __$ShelterAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name, String? city, String? street, GeoLocation? geoLocation});

  @override
  $GeoLocationCopyWith<$Res>? get geoLocation;
}

/// @nodoc
class __$ShelterAddressCopyWithImpl<$Res>
    extends _$ShelterAddressCopyWithImpl<$Res>
    implements _$ShelterAddressCopyWith<$Res> {
  __$ShelterAddressCopyWithImpl(
      _ShelterAddress _value, $Res Function(_ShelterAddress) _then)
      : super(_value, (v) => _then(v as _ShelterAddress));

  @override
  _ShelterAddress get _value => super._value as _ShelterAddress;

  @override
  $Res call({
    Object? name = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? geoLocation = freezed,
  }) {
    return _then(_ShelterAddress(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      geoLocation: geoLocation == freezed
          ? _value.geoLocation
          : geoLocation // ignore: cast_nullable_to_non_nullable
              as GeoLocation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShelterAddress implements _ShelterAddress {
  const _$_ShelterAddress(
      {this.name, this.city, this.street, this.geoLocation});

  factory _$_ShelterAddress.fromJson(Map<String, dynamic> json) =>
      _$_$_ShelterAddressFromJson(json);

  @override
  final String? name;
  @override
  final String? city;
  @override
  final String? street;
  @override
  final GeoLocation? geoLocation;

  @override
  String toString() {
    return 'ShelterAddress(name: $name, city: $city, street: $street, geoLocation: $geoLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShelterAddress &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.geoLocation, geoLocation) ||
                const DeepCollectionEquality()
                    .equals(other.geoLocation, geoLocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(geoLocation);

  @JsonKey(ignore: true)
  @override
  _$ShelterAddressCopyWith<_ShelterAddress> get copyWith =>
      __$ShelterAddressCopyWithImpl<_ShelterAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShelterAddressToJson(this);
  }
}

abstract class _ShelterAddress implements ShelterAddress {
  const factory _ShelterAddress(
      {String? name,
      String? city,
      String? street,
      GeoLocation? geoLocation}) = _$_ShelterAddress;

  factory _ShelterAddress.fromJson(Map<String, dynamic> json) =
      _$_ShelterAddress.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get city => throw _privateConstructorUsedError;
  @override
  String? get street => throw _privateConstructorUsedError;
  @override
  GeoLocation? get geoLocation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShelterAddressCopyWith<_ShelterAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
