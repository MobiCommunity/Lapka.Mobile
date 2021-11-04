import 'dart:async';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:lapka/services/google_sign_in_service.dart';

const String emailScope = 'email';

@LazySingleton(as: GoogleSignInService)
class GoogleSignInServiceImpl implements GoogleSignInService {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      emailScope,
    ],
  );

  GoogleSignInServiceImpl();

  @override
  Future<GoogleSignInAccount?> signIn() async => await _googleSignIn.signIn();

  @override
  Future<void> logout() async {
    if (await _googleSignIn.isSignedIn()) {
      await _googleSignIn.signOut();
    }
  }
}
