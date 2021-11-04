import 'package:injectable/injectable.dart';
import 'package:lapka/models/user.dart';
import 'package:lapka/repository/result.dart';
import 'package:lapka/repository/identity_api/user/user_data_source.dart';
import 'package:lapka/repository/identity_api/user/user_repository.dart';
import 'package:lapka/repository/network_exceptions.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserDataSource _userDataSource;

  UserRepositoryImpl(
    this._userDataSource,
  );

  @override
  Future<Result<User, NetworkExceptions>> getUserData(String userId) async {
    try {
      final User user = await _userDataSource.getUserData(userId);
      return Result.success(data: user);
    } catch (exp) {
      return Result.failure(error: NetworkExceptions.getDioException(exp));
    }
  }
}
