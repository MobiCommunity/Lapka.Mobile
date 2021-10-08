import 'package:lapka/models/new_user_data.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/repository/api_result.dart';

abstract class AuthenticationRepository {
  Future<ApiResult<Token>> singIn(String email, String password);

  Future<ApiResult<Token>> singInGoogle(String token);

  Future<ApiResult<Token>> singInFb(String token);

  Future<ApiResult<void>> signUp(NewUserData newUser);

  Future<ApiResult<Token>> refreshToken(String refreshToken);

  Future<ApiResult<void>> revokeRefreshToken(String refreshToken);
}
