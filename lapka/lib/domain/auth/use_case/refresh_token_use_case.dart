import 'package:injectable/injectable.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/result.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_repository.dart';

@injectable
class RefreshTokenUseCase {
  final AuthenticationRepository _authRepository;
  const RefreshTokenUseCase(
    this._authRepository,
  );

  Future<Result<Token,NetworkExceptions>> call(String refreshToken) async =>
      _authRepository.refreshToken(refreshToken);
}
