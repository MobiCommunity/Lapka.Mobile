abstract class AuthUserStore {
  Future<void> save(
    String token,
    String? refreshToken,
    int? expires,
    // String? username,
  );

  Future<String?> getToken();

  Future<String?> getRefreshToken();

  // Future<String> getUsername();

  Future<bool> isTokenStored();

  Future<bool> isTokenValid();

  Future<void> deleteAllUserData();
}
