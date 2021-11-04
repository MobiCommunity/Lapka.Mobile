import 'package:injectable/injectable.dart';
import 'package:lapka/models/new_user_data.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/repository/result.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_data_source.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_repository.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/services/facebook_auth_service.dart';
import 'package:lapka/services/google_sign_in_service.dart';

@Injectable(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationDataSource _remoteDataSource;
  final FacebookAuthService _facebookAuthService;
  final GoogleSignInService _googleSignInService;

  AuthenticationRepositoryImpl(
    this._remoteDataSource,
    this._facebookAuthService,
    this._googleSignInService,
  );

  @override
  Future<Result<Token, NetworkExceptions>> singIn(
      String email, String password) async {
    try {
      final Token token = await _remoteDataSource.singIn(email, password);
      return Result.success(data: token);
    } catch (exp) {
      return Result.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<Result<Token, NetworkExceptions>> refreshToken(
      String refreshToken) async {
    try {
      final Token token = await _remoteDataSource.refreshToken(refreshToken);
      return Result.success(data: token);
    } catch (exp) {
      return Result.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<Result<void, NetworkExceptions>> revokeRefreshToken(
      String refreshToken) async {
    try {
      await _remoteDataSource.revokeRefreshToken(refreshToken);
      return Result.success();
    } catch (exp) {
      return Result.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<Result<void, NetworkExceptions>> signUp(NewUserData newUser) async {
    try {
      await _remoteDataSource.signUp(newUser);
      return Result.success();
    } catch (exp) {
      return Result.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<Result<Token, NetworkExceptions>> singInFb(String fbToken) async {
    try {
      final Token token = await _remoteDataSource.singInFb(fbToken);
      return Result.success();
    } catch (exp) {
      return Result.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<Result<Token, NetworkExceptions>> singInGoogle(String gToken) async {
    try {
      final Token token = await _remoteDataSource.singInGoogle(gToken);
      return Result.success();
    } catch (exp) {
      return Result.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<Result<String, Exception>> authenticateWithFacebook() async {
    try {
      final accessToken = await _facebookAuthService.signIn();
      return Result.success(data: accessToken.token);
    } on Exception catch (e) {
      return Result.failure(error: e);
    }
  }

  @override
  Future<Result<String, Exception>> authenticateWithGoogle() async {
    try {
      final googleAccount = await _googleSignInService.signIn();
      final idToken = (await googleAccount!.authentication).idToken;
      if (idToken != null) {
        return Result.success(data: idToken);
      }
      throw Exception();
    } on Exception catch (e) {
      return Result.failure(error: e);
    }
  }
}
