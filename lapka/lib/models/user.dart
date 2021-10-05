/* import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @JsonKey(name: 'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', defaultValue: '') required String role,
    @JsonKey(name: 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', defaultValue: '') required String email,
    @JsonKey(name: 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/givenname', defaultValue: '') required String firstName,
    @JsonKey(name: 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/surname', defaultValue: '') required String surName,

  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
} */