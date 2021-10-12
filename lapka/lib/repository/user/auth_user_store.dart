import 'package:lapka/models/token.dart';

abstract class AuthUserStore {
  Future<void> save(
    Token token,
  );

  Future<String?> getToken();

  Future<String?> getRefreshToken();

  Future<bool> isTokenStored();

  Future<bool> isTokenValid();

  Future<void> deleteAllUserData();
}
