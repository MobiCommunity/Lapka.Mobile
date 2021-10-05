// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'my_pet_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyPetEvent _$MyPetEventFromJson(Map<String, dynamic> json) {
  return _MyPetEvent.fromJson(json);
}

/// @nodoc
class _$MyPetEventTearOff {
  const _$MyPetEventTearOff();

  _MyPetEvent call({String description = '', required DateTime date}) {
    return _MyPetEvent(
      description: description,
      date: date,
    );
  }

  MyPetEvent fromJson(Map<String, Object> json) {
    return MyPetEvent.fromJson(json);
  }
}

/// @nodoc
const $MyPetEvent = _$MyPetEventTearOff();

/// @nodoc
mixin _$MyPetEvent {
  String get description => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyPetEventCopyWith<MyPetEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPetEventCopyWith<$Res> {
  factory $MyPetEventCopyWith(
          MyPetEvent value, $Res Function(MyPetEvent) then) =
      _$MyPetEventCopyWithImpl<$Res>;
  $Res call({String description, DateTime date});
}

/// @nodoc
class _$MyPetEventCopyWithImpl<$Res> implements $MyPetEventCopyWith<$Res> {
  _$MyPetEventCopyWithImpl(this._value, this._then);

  final MyPetEvent _value;
  // ignore: unused_field
  final $Res Function(MyPetEvent) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$MyPetEventCopyWith<$Res> implements $MyPetEventCopyWith<$Res> {
  factory _$MyPetEventCopyWith(
          _MyPetEvent value, $Res Function(_MyPetEvent) then) =
      __$MyPetEventCopyWithImpl<$Res>;
  @override
  $Res call({String description, DateTime date});
}

/// @nodoc
class __$MyPetEventCopyWithImpl<$Res> extends _$MyPetEventCopyWithImpl<$Res>
    implements _$MyPetEventCopyWith<$Res> {
  __$MyPetEventCopyWithImpl(
      _MyPetEvent _value, $Res Function(_MyPetEvent) _then)
      : super(_value, (v) => _then(v as _MyPetEvent));

  @override
  _MyPetEvent get _value => super._value as _MyPetEvent;

  @override
  $Res call({
    Object? description = freezed,
    Object? date = freezed,
  }) {
    return _then(_MyPetEvent(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyPetEvent implements _MyPetEvent {
  const _$_MyPetEvent({this.description = '', required this.date});

  factory _$_MyPetEvent.fromJson(Map<String, dynamic> json) =>
      _$_$_MyPetEventFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String description;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'MyPetEvent(description: $description, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyPetEvent &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$MyPetEventCopyWith<_MyPetEvent> get copyWith =>
      __$MyPetEventCopyWithImpl<_MyPetEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MyPetEventToJson(this);
  }
}

abstract class _MyPetEvent implements MyPetEvent {
  const factory _MyPetEvent({String description, required DateTime date}) =
      _$_MyPetEvent;

  factory _MyPetEvent.fromJson(Map<String, dynamic> json) =
      _$_MyPetEvent.fromJson;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyPetEventCopyWith<_MyPetEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
