import 'package:lapka/models/new_user_data.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/models/user.dart';
import 'package:lapka/repository/api_result.dart';

abstract class UserRepository {
  Future<ApiResult<User>> getUserData(String userId);
}
