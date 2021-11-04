import 'package:injectable/injectable.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_repository.dart';
import 'package:lapka/services/user_service.dart';

@injectable
class LogoutUseCase {
  final AuthenticationRepository _authRepository;
  final UserService _userService;

  const LogoutUseCase(
    this._authRepository,
    this._userService,
  );

  Future<void> call() async {
    final refreshToken = await _userService.getRefreshToken();
    if (refreshToken != null) {
      _authRepository.revokeRefreshToken(refreshToken);
    }
    _userService.deleteAllUserData();
  }
}
