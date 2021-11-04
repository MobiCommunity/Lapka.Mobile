import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

abstract class FacebookAuthService {
  Future<AccessToken> signIn();
  Future<void> logout();
}
