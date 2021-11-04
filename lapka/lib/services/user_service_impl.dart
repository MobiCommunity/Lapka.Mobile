import 'package:glutton/glutton.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:lapka/models/user.dart';
import 'package:lapka/models/token.dart';
import 'package:lapka/services/user_service.dart';
import 'package:lapka/utils/extensions.dart';
import 'package:rxdart/subjects.dart';

const tokenKey = 'token';
const refreshTokenKey = 'refresh_token';
const expiresKey = 'expires';
const usernameKey = 'username';
const userKey = 'userKey';

@LazySingleton(as: UserService)
class UserServiceImpl extends UserService {
  final _userBroadcaster = BehaviorSubject<User?>();

  Future<void> _save(
    String token,
    String? refreshToken,
    int? expires,
  ) async {
    List<Future<bool>> _futuresArray = [
      Glutton.eat(tokenKey, token),
      Glutton.eat(expiresKey, expires),
    ];

    if (refreshToken != null) {
      _futuresArray.add(Glutton.eat(refreshTokenKey, refreshToken));
    }
    await Future.wait(_futuresArray);
  }

  @override
  Future<void> saveToken(
    Token token,
  ) {
    return _save(
      token.accessToken,
      token.refreshToken,
      token.expires,
    );
  }

  @override
  Future<String?> getToken() async {
    final String? token = await Glutton.vomit(tokenKey);
    return token.isNullOrEmpty() ? null : token;
  }

  @override
  Future<String?> getRefreshToken() async {
    final String? refreshToken = await Glutton.vomit(refreshTokenKey);
    return refreshToken.isNullOrEmpty() ? null : refreshToken;
  }

  @override
  Future<bool> isTokenStored() async {
    try {
      final tokenInfo = await Future.wait([
        Glutton.vomit(tokenKey),
        Glutton.vomit(expiresKey),
      ]);

      if (!(tokenInfo[0] as String?).isNullOrEmpty() &&
          (tokenInfo[1] as int?) != null) {
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

    String expiresDateTime = await Glutton.vomit(expiresKey);
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

  @override
  Future<String?> getUserId() async {
    if (await isTokenStored()) {
      return JwtDecoder.decode((await getToken())!)['unique_name'];
    }
    return null;
  }

  @override
  Stream<User?> observeUser() => _userBroadcaster.stream;

  @override
  Future<void> updateUserData(User? user) async {
    return _userBroadcaster.add(user);
  }

  @override
  User? getCurrentUser() {
    try {
      return _userBroadcaster.value;
    } catch (exp) {
      return null;
    }
  }
}
