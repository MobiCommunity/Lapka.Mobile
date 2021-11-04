import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_error.g.dart';
part 'base_error.freezed.dart';

@freezed
class BaseError with _$BaseError {
  const factory BaseError({String? code, String? reason}) = _BaseError;

  factory BaseError.fromJson(Map<String, dynamic> json) =>
      _$BaseErrorFromJson(json);
}
