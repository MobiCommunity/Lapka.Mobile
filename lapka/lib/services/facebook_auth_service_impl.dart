import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:lapka/services/facebook_auth_service.dart';

const String publicProfilePermission = 'public_profile';
const String emailPermission = 'email';
const String pagesShowListPermission = 'pages_show_list';

@LazySingleton(as: FacebookAuthService)
class FacebookAuthServiceImpl implements FacebookAuthService {
  final FacebookAuth _facebookAuth = FacebookAuth.i;

  @override
  Future<AccessToken> signIn() async {
    final _result = await _facebookAuth.login(
      permissions: [
        publicProfilePermission,
        emailPermission,
        pagesShowListPermission,
      ],
    );

    if (_result.status == LoginStatus.success) {
      final _accessToken = _result.accessToken;

      if (_accessToken != null) {
        return _accessToken;
      }
      throw Exception('Unknown error occured');
    } else {
      throw Exception(_result.message);
    }
  }

  @override
  Future<void> logout() async {
    await _facebookAuth.logOut();
  }
}
