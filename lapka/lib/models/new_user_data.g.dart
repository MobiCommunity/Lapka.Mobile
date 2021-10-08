// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewUserData _$$_NewUserDataFromJson(Map<String, dynamic> json) =>
    _$_NewUserData(
      username: json['username'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_NewUserDataToJson(_$_NewUserData instance) =>
    <String, dynamic>{
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
    };
