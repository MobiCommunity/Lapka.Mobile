import 'package:injectable/injectable.dart';
import 'package:lapka/models/new_user_data.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/repository/api_result.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_data_source.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_repository.dart';
import 'package:lapka/repository/network_exceptions.dart';

@Injectable(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationDataSource _remoteDataSource;

  AuthenticationRepositoryImpl(
    this._remoteDataSource,
  );

  @override
  Future<ApiResult<Token>> singIn(String email, String password) async {
    try {
      final Token token = await _remoteDataSource.singIn(email, password);
      return ApiResult.success(data: token);
    } catch (exp) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<ApiResult<Token>> refreshToken(String refreshToken) async {
    try {
      final Token token = await _remoteDataSource.refreshToken(refreshToken);
      return ApiResult.success(data: token);
    } catch (exp) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<ApiResult<void>> revokeRefreshToken(String refreshToken) async {
    try {
      await _remoteDataSource.revokeRefreshToken(refreshToken);
      return ApiResult.success();
    } catch (exp) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<ApiResult<void>> signUp(NewUserData newUser) async {
    try {
      await _remoteDataSource.signUp(newUser);
      return ApiResult.success();
    } catch (exp) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<ApiResult<Token>> singInFb(String fbToken) async {
    try {
      final Token token = await _remoteDataSource.singInFb(fbToken);
      return ApiResult.success();
    } catch (exp) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<ApiResult<Token>> singInGoogle(String gToken) async {
    try {
      final Token token = await _remoteDataSource.singInGoogle(gToken);
      return ApiResult.success();
    } catch (exp) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(exp));
    }
  }
}
