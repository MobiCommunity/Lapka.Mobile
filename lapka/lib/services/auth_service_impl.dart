import 'package:injectable/injectable.dart';
import 'package:lapka/domain/auth/use_cases/refresh_token_use_case.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/result.dart';
import 'package:lapka/services/auth_service.dart';
import 'package:lapka/services/user_service.dart';
import 'package:lapka/utils/broadcasters/auth_broadcaster.dart';

@LazySingleton(as: AuthService)
class AuthServiceImpl extends AuthService {
  UserService _userService;
  RefreshTokenUseCase _refreshTokenUseCase;
  AuthBroadcaster _authBroadcaster;

  AuthServiceImpl(
    this._userService,
    this._authBroadcaster,
    this._refreshTokenUseCase,
  
  ) {
    _init();
  }

  void _init() async {
   
    if (await _userService.isTokenValid()) {
      _authBroadcaster.updateState(AuthState.authenticated());
    }
  }

  @override
  Future<void> checkToken() async {
    if (await _shouldRefreshToken()) {
      final Result<Token, NetworkExceptions> response =
          await _refreshTokenUseCase(
        (await _userService.getRefreshToken())!,
      );

      await response.when(
        success: (token) async {
          await _userService.saveToken(token!);
          _authBroadcaster.updateState(
            AuthState.authenticated(),
          );
        },
        failure: (_) async => _authBroadcaster.updateState(
          AuthState.unauthenticated(),
        ),
      );
    }
  }

  Future<bool> _shouldRefreshToken() async {
    if (await _userService.isTokenValid()) {
      return false;
    } else if (await _userService.isTokenStored() &&
        !(await _userService.isTokenValid())) {
      return true;
    } else {
      return false;
    }
  }
}
