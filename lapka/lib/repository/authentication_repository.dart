import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/requests/requests.dart';
import 'package:lapka/settings/request_settings.dart';

abstract class AuthenticationRepository {
  final FlutterSecureStorage _instance;
  static const _accessTokenKey = 'ACCESSTOKEN';
  static const _refreshTokenKey = 'REFRESHTOKEN';
  AuthenticationRepository(this._instance);

  Future<Token> singIn(String email, String password);
  Future<Token> singInGoogle(String token);
  Future<Token> singInFb(String token);
  Future<void> signUp(String username, String firstName, String lastName,
      String email, String password);
  Future<Token> refreshToken(String refreshToken);
  Future<void> revokeRefreshToken(String refreshToken);

  Future<String?> getToken();
  Future<String?> getRefreshToken();
  Future<void> deleteToken();
  Future<void> putToken(String token, String refreshToken);

}

class AuthenticationRepositoryApi extends AuthenticationRepository {

  AuthenticationRepositoryApi(FlutterSecureStorage _instance) : super(_instance);
  @override
  Future<Token> refreshToken(String refreshToken) async {
    try {
      Response res = await Requests.sendRequest(
          identityUrl + 'api/identity/auth/use', {'token': refreshToken}, Type.post);
      if (res.statusCode == 200) {
        return Token.fromJson(json.decode(res.body));
      } else {
        throw Exception();
      }
      
    } catch (e) {
      throw Exception('Wystąpił błąd');
    }
  }

  @override
  Future<void> signUp(String username, String firstName, String lastName,
      String email, String password) async {
    try {
      Response res = await Requests.sendRequest(
          identityUrl + 'api/identity/auth/signin',
          {
            'username': username,
            'firstName': firstName,
            'lastName': lastName,
            'email': email,
            'password': password,
          },
          Type.post);
      if (res.statusCode != 201) {
        throw Exception();
      }
    } catch (e) {
      throw Exception('Wystąpił błąd');
    }
  }

  @override
  Future<Token> singIn(String email, String password) async {
    try {
      Response res = await Requests.sendRequest(identityUrl + 'api/identity/auth/signin',
          {'email': email, 'password': password}, Type.post);
      if (res.statusCode == 200) {
        return Token.fromJson(json.decode(res.body));
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception('Wystąpił błąd');
    }
  }

  @override
  Future<Token> singInFb(String token) async {
    try {
      Response res = await Requests.sendRequest(
          identityUrl + 'api/identity/auth/signin-facebook',
          {'token': token},
          Type.post);
      if (res.statusCode == 200) {
        return Token.fromJson(json.decode(res.body));
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception('Wystąpił błąd');
    }
  }

  @override
  Future<Token> singInGoogle(String token) async {
    try {
      Response res = await Requests.sendRequest(
          identityUrl + 'api/identity/auth/signin-google', {'token': token}, Type.post);
      if (res.statusCode == 200) {
        return Token.fromJson(json.decode(res.body));
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception('Wystąpił błąd');
    }
  }

   @override
  Future<void> revokeRefreshToken(String refreshToken) async {
     try {
      Response res = await Requests.sendRequest(
          identityUrl + 'api/identity/auth/revoke', {'token': refreshToken}, Type.post);
      if (res.statusCode != 204) {
        throw Exception();
      } 
      
    } catch (e) {
      throw Exception('Wystąpił błąd');
    }
  }

  @override
  Future<void> deleteToken() async{
    await _instance.delete(key: AuthenticationRepository._accessTokenKey);
    await _instance.delete(key: AuthenticationRepository._refreshTokenKey);
  }

  @override
  Future<String?> getToken() async{
    return await _instance.read(key: AuthenticationRepository._accessTokenKey);
  }

  @override
  Future<String?> getRefreshToken() async {
    return await _instance.read(key: AuthenticationRepository._refreshTokenKey);
  }

  @override
  Future<void> putToken(String token,String refreshToken) async {
    await _instance.write(key: AuthenticationRepository._accessTokenKey, value: token);
    await _instance.write(key: AuthenticationRepository._refreshTokenKey, value: refreshToken);
  }


}
