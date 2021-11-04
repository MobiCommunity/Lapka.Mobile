import 'package:lapka/models/new_user_data.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/result.dart';

abstract class AuthenticationRepository {
  Future<Result<Token, NetworkExceptions>> singIn(
      String email, String password);

  Future<Result<Token, NetworkExceptions>> singInGoogle(String token);

  Future<Result<Token, NetworkExceptions>> singInFb(String token);

  Future<Result<String, Exception>> authenticateWithGoogle();

  Future<Result<String, Exception>> authenticateWithFacebook();

  Future<Result<void, NetworkExceptions>> signUp(NewUserData newUser);

  Future<Result<Token, NetworkExceptions>> refreshToken(String refreshToken);

  Future<Result<void, NetworkExceptions>> revokeRefreshToken(
      String refreshToken);
}
