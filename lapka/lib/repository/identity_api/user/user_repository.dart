import 'package:lapka/models/new_user_data.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/models/user.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/result.dart';

abstract class UserRepository {
  Future<Result<User, NetworkExceptions>> getUserData(String userId);
}
