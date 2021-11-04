import 'package:injectable/injectable.dart';
import 'package:lapka/models/new_user_data.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/repository/result.dart';
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
  Future<Result<Token,NetworkExceptions>> singIn(String email, String password) async {
    try {
      final Token token = await _remoteDataSource.singIn(email, password);
      return Result.success(data: token);
    } catch (exp) {
      return Result.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<Result<Token,NetworkExceptions>> refreshToken(String refreshToken) async {
    try {
      final Token token = await _remoteDataSource.refreshToken(refreshToken);
      return Result.success(data: token);
    } catch (exp) {
      return Result.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<Result<void,NetworkExceptions>> revokeRefreshToken(String refreshToken) async {
    try {
      await _remoteDataSource.revokeRefreshToken(refreshToken);
      return Result.success();
    } catch (exp) {
      return Result.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<Result<void,NetworkExceptions>> signUp(NewUserData newUser) async {
    try {
      await _remoteDataSource.signUp(newUser);
      return Result.success();
    } catch (exp) {

      return Result.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<Result<Token,NetworkExceptions>> singInFb(String fbToken) async {
    try {
      final Token token = await _remoteDataSource.singInFb(fbToken);
      return Result.success();
    } catch (exp) {
      return Result.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<Result<Token,NetworkExceptions>> singInGoogle(String gToken) async {
    try {
      final Token token = await _remoteDataSource.singInGoogle(gToken);
      return Result.success();
    } catch (exp) {
      return Result.failure(error: NetworkExceptions.getDioException(exp));
    }
  }
}
