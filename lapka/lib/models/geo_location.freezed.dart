// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'geo_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoLocation _$GeoLocationFromJson(Map<String, dynamic> json) {
  return _GeoLocation.fromJson(json);
}

/// @nodoc
class _$GeoLocationTearOff {
  const _$GeoLocationTearOff();

  _GeoLocation call(
      {@JsonKey(name: 'latitude', fromJson: _doubleFromString)
          double? latitude,
      @JsonKey(name: 'longitude', fromJson: _doubleFromString)
          double? longitude}) {
    return _GeoLocation(
      latitude: latitude,
      longitude: longitude,
    );
  }

  GeoLocation fromJson(Map<String, Object> json) {
    return GeoLocation.fromJson(json);
  }
}

/// @nodoc
const $GeoLocation = _$GeoLocationTearOff();

/// @nodoc
mixin _$GeoLocation {
  @JsonKey(name: 'latitude', fromJson: _doubleFromString)
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude', fromJson: _doubleFromString)
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoLocationCopyWith<GeoLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoLocationCopyWith<$Res> {
  factory $GeoLocationCopyWith(
          GeoLocation value, $Res Function(GeoLocation) then) =
      _$GeoLocationCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'latitude', fromJson: _doubleFromString)
          double? latitude,
      @JsonKey(name: 'longitude', fromJson: _doubleFromString)
          double? longitude});
}

/// @nodoc
class _$GeoLocationCopyWithImpl<$Res> implements $GeoLocationCopyWith<$Res> {
  _$GeoLocationCopyWithImpl(this._value, this._then);

  final GeoLocation _value;
  // ignore: unused_field
  final $Res Function(GeoLocation) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$GeoLocationCopyWith<$Res>
    implements $GeoLocationCopyWith<$Res> {
  factory _$GeoLocationCopyWith(
          _GeoLocation value, $Res Function(_GeoLocation) then) =
      __$GeoLocationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'latitude', fromJson: _doubleFromString)
          double? latitude,
      @JsonKey(name: 'longitude', fromJson: _doubleFromString)
          double? longitude});
}

/// @nodoc
class __$GeoLocationCopyWithImpl<$Res> extends _$GeoLocationCopyWithImpl<$Res>
    implements _$GeoLocationCopyWith<$Res> {
  __$GeoLocationCopyWithImpl(
      _GeoLocation _value, $Res Function(_GeoLocation) _then)
      : super(_value, (v) => _then(v as _GeoLocation));

  @override
  _GeoLocation get _value => super._value as _GeoLocation;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_GeoLocation(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeoLocation implements _GeoLocation {
  const _$_GeoLocation(
      {@JsonKey(name: 'latitude', fromJson: _doubleFromString) this.latitude,
      @JsonKey(name: 'longitude', fromJson: _doubleFromString) this.longitude});

  factory _$_GeoLocation.fromJson(Map<String, dynamic> json) =>
      _$_$_GeoLocationFromJson(json);

  @override
  @JsonKey(name: 'latitude', fromJson: _doubleFromString)
  final double? latitude;
  @override
  @JsonKey(name: 'longitude', fromJson: _doubleFromString)
  final double? longitude;

  @override
  String toString() {
    return 'GeoLocation(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GeoLocation &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @JsonKey(ignore: true)
  @override
  _$GeoLocationCopyWith<_GeoLocation> get copyWith =>
      __$GeoLocationCopyWithImpl<_GeoLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GeoLocationToJson(this);
  }
}

abstract class _GeoLocation implements GeoLocation {
  const factory _GeoLocation(
      {@JsonKey(name: 'latitude', fromJson: _doubleFromString)
          double? latitude,
      @JsonKey(name: 'longitude', fromJson: _doubleFromString)
          double? longitude}) = _$_GeoLocation;

  factory _GeoLocation.fromJson(Map<String, dynamic> json) =
      _$_GeoLocation.fromJson;

  @override
  @JsonKey(name: 'latitude', fromJson: _doubleFromString)
  double? get latitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'longitude', fromJson: _doubleFromString)
  double? get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GeoLocationCopyWith<_GeoLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
