import 'package:injectable/injectable.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_repository.dart';
import 'package:lapka/repository/result.dart';

@injectable
class GoogleLoginUseCase {
  final AuthenticationRepository _authenticationRepository;
  const GoogleLoginUseCase(
    this._authenticationRepository,
  );

  Future<Result<String, Exception>> call() async =>
      _authenticationRepository.authenticateWithGoogle();
}
