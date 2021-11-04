import 'package:injectable/injectable.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_repository.dart';
import 'package:lapka/services/user_service.dart';
import 'package:lapka/utils/broadcasters/auth_broadcaster.dart';

@injectable
class LogoutUseCase {
  final AuthenticationRepository _authRepository;
  final UserService _userService;
  final AuthBroadcaster _authBroadcaster;

  const LogoutUseCase(
    this._authRepository,
    this._userService,
    this._authBroadcaster,
  );

  Future<void> call() async {
    final refreshToken = await _userService.getRefreshToken();
    if (refreshToken != null) {
      _authRepository.revokeRefreshToken(refreshToken);
    }
    _userService.deleteAllUserData();
    _authBroadcaster.updateState(AuthState.unauthenticated());
  }
}
