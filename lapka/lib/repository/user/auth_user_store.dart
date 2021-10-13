import 'package:lapka/models/token.dart';
import 'package:lapka/models/user.dart';

abstract class AuthUserStore {
  Future<void> saveToken(
    Token token,
  );

  Future<String?> getToken();

  Future<String?> getRefreshToken();

  Future<bool> isTokenStored();

  Future<bool> isTokenValid();

  Future<void> deleteAllUserData();

  bool isUserStored();

  Future<String?> getUserId();

  Future<void> setUser(User user);

  Future<User?> getUser();
}
