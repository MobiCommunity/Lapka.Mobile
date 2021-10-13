import 'package:lapka/models/new_user_data.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/models/user.dart';

abstract class UserDataSource {
  Future<User> getUserData(String userId);
}
