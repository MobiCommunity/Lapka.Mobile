// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Token _$_$_TokenFromJson(Map<String, dynamic> json) {
  return _$_Token(
    accessToken: json['accessToken'] as String? ?? '',
    refreshToken: json['refreshToken'] as String? ?? '',
    expires: json['expires'] as int? ?? -1,
  );
}

Map<String, dynamic> _$_$_TokenToJson(_$_Token instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expires': instance.expires,
    };
