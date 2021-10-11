import 'package:lapka/models/new_user_data.dart';
import 'package:lapka/models/token.dart';

abstract class AuthenticationDataSource {
  Future<Token> singIn(String email, String password);

  Future<Token> singInGoogle(String token);

  Future<Token> singInFb(String token);

  Future<void> signUp(NewUserData newUser);

  Future<Token> refreshToken(String refreshToken);

  Future<void> revokeRefreshToken(String refreshToken);
}
