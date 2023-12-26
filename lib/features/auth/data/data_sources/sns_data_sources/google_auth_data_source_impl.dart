import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pets_next_door_flutter/core/enums/sns_provider_type.dart';
import 'package:pets_next_door_flutter/features/auth/data/data_sources/sns_data_sources/sns_auth_data_source.dart';
import 'package:pets_next_door_flutter/features/auth/domain/sns_oauth_info.dart';

final googleAuthServiceProvider = Provider.autoDispose<SnsAuthDataSource>(
    (ref) => GoogleAuthDataSourceImpl());

class GoogleAuthDataSourceImpl implements SnsAuthDataSource {
  @override
  Future<SnsOAuthInfo> snsLogin() async {
    final signInResult = await _signInWithGoogle();

    // Once signed in, return the UserCredential
    // return FirebaseAuth.instance.signInWithCredential(oAuthCredential);
    return SnsOAuthInfo.credential(
      providerType: SnsProviderType.google,
      authCredential: signInResult.oAuthCredential,
      email: signInResult.email,
    );
  }

  Future<SignInResultOAuthCredential> _signInWithGoogle() async {
    final googleSignIn = GoogleSignIn();
    final isSignedIn = await googleSignIn.isSignedIn();
    final GoogleSignInAuthentication? googleAuth;
    final String? userEmail;

    if (isSignedIn && googleSignIn.currentUser != null) {
      final currentUser = googleSignIn.currentUser;

      googleAuth = await currentUser?.authentication;
      userEmail = currentUser?.email;
    } else {
      // Trigger the authentication flow
      final googleUser = await googleSignIn.signIn();

      // Obtain the auth details from the request
      googleAuth = await googleUser?.authentication;
      userEmail = googleUser?.email;
    }

    // Create a new credential
    return (
      oAuthCredential: GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      ),
      email: userEmail ?? ''
    );
  }

  @override
  Future<Valid> validateLoginStatus() {
    // TODO: implement validateLoginStatus
    throw UnimplementedError();
  }
}
