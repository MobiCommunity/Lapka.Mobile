import 'package:google_sign_in/google_sign_in.dart';

abstract class GoogleSignInService {
  Future<GoogleSignInAccount?> signIn();
  Future<void> logout();
}
