import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@freezed
abstract class Token with _$Token {
  const factory Token({
    @JsonKey(name: 'accessToken', defaultValue: '') required String accessToken,
    @JsonKey(name: 'refreshToken', defaultValue: '') required String refreshToken,
    @JsonKey(name: 'expires', defaultValue: -1) int? expires,
  }) = _Token;
  factory Token.fromJson(Map<String, dynamic> json) =>
      _$TokenFromJson(json);
}
