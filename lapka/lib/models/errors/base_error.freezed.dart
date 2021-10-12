// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseError _$BaseErrorFromJson(Map<String, dynamic> json) {
  return _BaseError.fromJson(json);
}

/// @nodoc
class _$BaseErrorTearOff {
  const _$BaseErrorTearOff();

  _BaseError call({String? code, String? reason}) {
    return _BaseError(
      code: code,
      reason: reason,
    );
  }

  BaseError fromJson(Map<String, Object> json) {
    return BaseError.fromJson(json);
  }
}

/// @nodoc
const $BaseError = _$BaseErrorTearOff();

/// @nodoc
mixin _$BaseError {
  String? get code => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseErrorCopyWith<BaseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseErrorCopyWith<$Res> {
  factory $BaseErrorCopyWith(BaseError value, $Res Function(BaseError) then) =
      _$BaseErrorCopyWithImpl<$Res>;
  $Res call({String? code, String? reason});
}

/// @nodoc
class _$BaseErrorCopyWithImpl<$Res> implements $BaseErrorCopyWith<$Res> {
  _$BaseErrorCopyWithImpl(this._value, this._then);

  final BaseError _value;
  // ignore: unused_field
  final $Res Function(BaseError) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BaseErrorCopyWith<$Res> implements $BaseErrorCopyWith<$Res> {
  factory _$BaseErrorCopyWith(
          _BaseError value, $Res Function(_BaseError) then) =
      __$BaseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String? code, String? reason});
}

/// @nodoc
class __$BaseErrorCopyWithImpl<$Res> extends _$BaseErrorCopyWithImpl<$Res>
    implements _$BaseErrorCopyWith<$Res> {
  __$BaseErrorCopyWithImpl(_BaseError _value, $Res Function(_BaseError) _then)
      : super(_value, (v) => _then(v as _BaseError));

  @override
  _BaseError get _value => super._value as _BaseError;

  @override
  $Res call({
    Object? code = freezed,
    Object? reason = freezed,
  }) {
    return _then(_BaseError(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseError implements _BaseError {
  const _$_BaseError({this.code, this.reason});

  factory _$_BaseError.fromJson(Map<String, dynamic> json) =>
      _$$_BaseErrorFromJson(json);

  @override
  final String? code;
  @override
  final String? reason;

  @override
  String toString() {
    return 'BaseError(code: $code, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BaseError &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(reason);

  @JsonKey(ignore: true)
  @override
  _$BaseErrorCopyWith<_BaseError> get copyWith =>
      __$BaseErrorCopyWithImpl<_BaseError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseErrorToJson(this);
  }
}

abstract class _BaseError implements BaseError {
  const factory _BaseError({String? code, String? reason}) = _$_BaseError;

  factory _BaseError.fromJson(Map<String, dynamic> json) =
      _$_BaseError.fromJson;

  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get reason => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BaseErrorCopyWith<_BaseError> get copyWith =>
      throw _privateConstructorUsedError;
}
