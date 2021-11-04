import 'package:injectable/injectable.dart';
import 'package:lapka/models/user.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/result.dart';
import 'package:lapka/repository/identity_api/user/user_repository.dart';
import 'package:lapka/services/user_service.dart';

@injectable
class FetchUserDataUseCase {
  final UserRepository _userRepository;
  final UserService _userService;

  const FetchUserDataUseCase(this._userRepository, this._userService);

  Future<Result<User, NetworkExceptions>> call(String userId) async {
    final result = await _userRepository.getUserData(userId);

    result.maybeWhen(
      success: (user) => _userService.updateUserData(user!),
      orElse: () {},
    );

    return result;
  }
}
