// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pet _$PetFromJson(Map<String, dynamic> json) {
  return _Pet.fromJson(json);
}

/// @nodoc
class _$PetTearOff {
  const _$PetTearOff();

  _Pet call(
      {String? id,
      String? name,
      @JsonKey(name: 'sex', fromJson: _boolFromInt) bool? sex,
      String? race,
      int? species,
      String? mainPhotoPath,
      DateTime? birthDay,
      String? color,
      double? weight,
      bool? sterilization,
      ShelterAddress? shelterAddress,
      String? description}) {
    return _Pet(
      id: id,
      name: name,
      sex: sex,
      race: race,
      species: species,
      mainPhotoPath: mainPhotoPath,
      birthDay: birthDay,
      color: color,
      weight: weight,
      sterilization: sterilization,
      shelterAddress: shelterAddress,
      description: description,
    );
  }

  Pet fromJson(Map<String, Object> json) {
    return Pet.fromJson(json);
  }
}

/// @nodoc
const $Pet = _$PetTearOff();

/// @nodoc
mixin _$Pet {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'sex', fromJson: _boolFromInt)
  bool? get sex => throw _privateConstructorUsedError;
  String? get race => throw _privateConstructorUsedError;
  int? get species => throw _privateConstructorUsedError;
  String? get mainPhotoPath => throw _privateConstructorUsedError;
  DateTime? get birthDay => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  bool? get sterilization => throw _privateConstructorUsedError;
  ShelterAddress? get shelterAddress => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetCopyWith<Pet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetCopyWith<$Res> {
  factory $PetCopyWith(Pet value, $Res Function(Pet) then) =
      _$PetCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      @JsonKey(name: 'sex', fromJson: _boolFromInt) bool? sex,
      String? race,
      int? species,
      String? mainPhotoPath,
      DateTime? birthDay,
      String? color,
      double? weight,
      bool? sterilization,
      ShelterAddress? shelterAddress,
      String? description});

  $ShelterAddressCopyWith<$Res>? get shelterAddress;
}

/// @nodoc
class _$PetCopyWithImpl<$Res> implements $PetCopyWith<$Res> {
  _$PetCopyWithImpl(this._value, this._then);

  final Pet _value;
  // ignore: unused_field
  final $Res Function(Pet) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? sex = freezed,
    Object? race = freezed,
    Object? species = freezed,
    Object? mainPhotoPath = freezed,
    Object? birthDay = freezed,
    Object? color = freezed,
    Object? weight = freezed,
    Object? sterilization = freezed,
    Object? shelterAddress = freezed,
    Object? description = freezed,
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
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as bool?,
      race: race == freezed
          ? _value.race
          : race // ignore: cast_nullable_to_non_nullable
              as String?,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as int?,
      mainPhotoPath: mainPhotoPath == freezed
          ? _value.mainPhotoPath
          : mainPhotoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDay: birthDay == freezed
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      sterilization: sterilization == freezed
          ? _value.sterilization
          : sterilization // ignore: cast_nullable_to_non_nullable
              as bool?,
      shelterAddress: shelterAddress == freezed
          ? _value.shelterAddress
          : shelterAddress // ignore: cast_nullable_to_non_nullable
              as ShelterAddress?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ShelterAddressCopyWith<$Res>? get shelterAddress {
    if (_value.shelterAddress == null) {
      return null;
    }

    return $ShelterAddressCopyWith<$Res>(_value.shelterAddress!, (value) {
      return _then(_value.copyWith(shelterAddress: value));
    });
  }
}

/// @nodoc
abstract class _$PetCopyWith<$Res> implements $PetCopyWith<$Res> {
  factory _$PetCopyWith(_Pet value, $Res Function(_Pet) then) =
      __$PetCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      @JsonKey(name: 'sex', fromJson: _boolFromInt) bool? sex,
      String? race,
      int? species,
      String? mainPhotoPath,
      DateTime? birthDay,
      String? color,
      double? weight,
      bool? sterilization,
      ShelterAddress? shelterAddress,
      String? description});

  @override
  $ShelterAddressCopyWith<$Res>? get shelterAddress;
}

/// @nodoc
class __$PetCopyWithImpl<$Res> extends _$PetCopyWithImpl<$Res>
    implements _$PetCopyWith<$Res> {
  __$PetCopyWithImpl(_Pet _value, $Res Function(_Pet) _then)
      : super(_value, (v) => _then(v as _Pet));

  @override
  _Pet get _value => super._value as _Pet;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? sex = freezed,
    Object? race = freezed,
    Object? species = freezed,
    Object? mainPhotoPath = freezed,
    Object? birthDay = freezed,
    Object? color = freezed,
    Object? weight = freezed,
    Object? sterilization = freezed,
    Object? shelterAddress = freezed,
    Object? description = freezed,
  }) {
    return _then(_Pet(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as bool?,
      race: race == freezed
          ? _value.race
          : race // ignore: cast_nullable_to_non_nullable
              as String?,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as int?,
      mainPhotoPath: mainPhotoPath == freezed
          ? _value.mainPhotoPath
          : mainPhotoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDay: birthDay == freezed
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      sterilization: sterilization == freezed
          ? _value.sterilization
          : sterilization // ignore: cast_nullable_to_non_nullable
              as bool?,
      shelterAddress: shelterAddress == freezed
          ? _value.shelterAddress
          : shelterAddress // ignore: cast_nullable_to_non_nullable
              as ShelterAddress?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pet implements _Pet {
  const _$_Pet(
      {this.id,
      this.name,
      @JsonKey(name: 'sex', fromJson: _boolFromInt) this.sex,
      this.race,
      this.species,
      this.mainPhotoPath,
      this.birthDay,
      this.color,
      this.weight,
      this.sterilization,
      this.shelterAddress,
      this.description});

  factory _$_Pet.fromJson(Map<String, dynamic> json) => _$$_PetFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'sex', fromJson: _boolFromInt)
  final bool? sex;
  @override
  final String? race;
  @override
  final int? species;
  @override
  final String? mainPhotoPath;
  @override
  final DateTime? birthDay;
  @override
  final String? color;
  @override
  final double? weight;
  @override
  final bool? sterilization;
  @override
  final ShelterAddress? shelterAddress;
  @override
  final String? description;

  @override
  String toString() {
    return 'Pet(id: $id, name: $name, sex: $sex, race: $race, species: $species, mainPhotoPath: $mainPhotoPath, birthDay: $birthDay, color: $color, weight: $weight, sterilization: $sterilization, shelterAddress: $shelterAddress, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pet &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.sex, sex) ||
                const DeepCollectionEquality().equals(other.sex, sex)) &&
            (identical(other.race, race) ||
                const DeepCollectionEquality().equals(other.race, race)) &&
            (identical(other.species, species) ||
                const DeepCollectionEquality()
                    .equals(other.species, species)) &&
            (identical(other.mainPhotoPath, mainPhotoPath) ||
                const DeepCollectionEquality()
                    .equals(other.mainPhotoPath, mainPhotoPath)) &&
            (identical(other.birthDay, birthDay) ||
                const DeepCollectionEquality()
                    .equals(other.birthDay, birthDay)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.sterilization, sterilization) ||
                const DeepCollectionEquality()
                    .equals(other.sterilization, sterilization)) &&
            (identical(other.shelterAddress, shelterAddress) ||
                const DeepCollectionEquality()
                    .equals(other.shelterAddress, shelterAddress)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(sex) ^
      const DeepCollectionEquality().hash(race) ^
      const DeepCollectionEquality().hash(species) ^
      const DeepCollectionEquality().hash(mainPhotoPath) ^
      const DeepCollectionEquality().hash(birthDay) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(sterilization) ^
      const DeepCollectionEquality().hash(shelterAddress) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$PetCopyWith<_Pet> get copyWith =>
      __$PetCopyWithImpl<_Pet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetToJson(this);
  }
}

abstract class _Pet implements Pet {
  const factory _Pet(
      {String? id,
      String? name,
      @JsonKey(name: 'sex', fromJson: _boolFromInt) bool? sex,
      String? race,
      int? species,
      String? mainPhotoPath,
      DateTime? birthDay,
      String? color,
      double? weight,
      bool? sterilization,
      ShelterAddress? shelterAddress,
      String? description}) = _$_Pet;

  factory _Pet.fromJson(Map<String, dynamic> json) = _$_Pet.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sex', fromJson: _boolFromInt)
  bool? get sex => throw _privateConstructorUsedError;
  @override
  String? get race => throw _privateConstructorUsedError;
  @override
  int? get species => throw _privateConstructorUsedError;
  @override
  String? get mainPhotoPath => throw _privateConstructorUsedError;
  @override
  DateTime? get birthDay => throw _privateConstructorUsedError;
  @override
  String? get color => throw _privateConstructorUsedError;
  @override
  double? get weight => throw _privateConstructorUsedError;
  @override
  bool? get sterilization => throw _privateConstructorUsedError;
  @override
  ShelterAddress? get shelterAddress => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PetCopyWith<_Pet> get copyWith => throw _privateConstructorUsedError;
}
