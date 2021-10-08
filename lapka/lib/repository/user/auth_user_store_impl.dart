import 'package:glutton/glutton.dart';
import 'package:injectable/injectable.dart';
import 'package:lapka/repository/user/auth_user_store.dart';

const tokenKey = 'token';
const refreshTokenKey = 'refresh_token';
const expiresKey = 'expires';
const usernameKey = 'username';

@LazySingleton(as: AuthUserStore)
class AuthUserStoreImpl implements AuthUserStore {
  Future<void> _save(String token, String? refreshToken, int? expires,
      // String? username

      ) async {
    List<Future<bool>> _futuresArray = [
      Glutton.eat(tokenKey, token),
      Glutton.eat(expiresKey, expires),
    ];

    if (refreshToken != null) {
      _futuresArray.add(
          Glutton.eat(refreshTokenKey, refreshToken));
    }

    // if (username != null) {
    //   _futuresArray
    //       .add(Glutton.eat(usernameKey, username));
    // }

    await Future.wait(_futuresArray);
  }

  @override
  Future<void> save(
    String token,
    String? refreshToken,
    int? expires,
    // String? username,
  ) {
    return _save(
      token,
      refreshToken,
      expires,
      // username,
    );
  }

  @override
  Future<String?> getToken() async {
    final String token = await Glutton.vomit(tokenKey);
    return token.isEmpty ? null : token;
  }

  @override
  Future<String?> getRefreshToken() async {
    final String refreshToken =
        await Glutton.vomit(refreshTokenKey);
    return refreshToken.isEmpty ? null : refreshToken;
  }

  @override
  Future<String> getUsername() async {
    return await Glutton.vomit(usernameKey);
  }

  @override
  Future<bool> isTokenStored() async {
    try {
      var tokenInfo = await Future.wait([
        Glutton.vomit(tokenKey),
        Glutton.vomit(expiresKey),
      ]);

      if (tokenInfo[0].isNotEmpty && tokenInfo[1].isNotEmpty) {
        return true;
      }

      return false;
    } catch (exp) {
      return false;
    }
  }

  @override
  Future<bool> isTokenValid() async {
    if (!(await isTokenStored())) {
      return false;
    }

    String expiresDateTime =
        await Glutton.vomit(expiresKey);
    DateTime expireInDate;

    try {
      expireInDate = DateTime.parse(expiresDateTime).toLocal();
    } catch (exp) {
      expireInDate = DateTime.now();
    }

    return expireInDate.isAfter(DateTime.now());
  }

  @override
  Future<void> deleteAllUserData() async {
    await Glutton.flush();
  }
}
