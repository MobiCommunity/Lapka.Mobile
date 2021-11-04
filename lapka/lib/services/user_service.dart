import 'package:lapka/models/token.dart';
import 'package:lapka/models/user.dart';

abstract class UserService {
  Future<void> saveToken(
    Token token,
  );

  Future<String?> getToken();

  Future<String?> getRefreshToken();

  Future<bool> isTokenStored();

  Future<bool> isTokenValid();

  Future<void> deleteAllUserData();

  Future<String?> getUserId();

  Future<void> updateUserData(User? user);

  Stream<User?> observeUser();

  User? getCurrentUser();
}
