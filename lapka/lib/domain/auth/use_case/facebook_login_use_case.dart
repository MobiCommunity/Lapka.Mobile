import 'package:injectable/injectable.dart';
import 'package:lapka/repository/identity_api/authentication/authentication_repository.dart';
import 'package:lapka/repository/result.dart';

@injectable
class FacebookLoginUseCase {
  final AuthenticationRepository _authenticationRepository;
  const FacebookLoginUseCase(
    this._authenticationRepository,
  );

  Future<Result<String, Exception>> call() async =>
      _authenticationRepository.authenticateWithFacebook();
}
