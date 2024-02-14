import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:pets_next_door_flutter/app/env/flavors.dart';
import 'package:pets_next_door_flutter/core/enums/sns_provider_type.dart';
import 'package:pets_next_door_flutter/core/network_handling/app_dio.dart';
import 'package:pets_next_door_flutter/core/network_handling/exceptions/custom_exception.dart';
import 'package:pets_next_door_flutter/features/auth/api/auth_api.dart';
import 'package:pets_next_door_flutter/features/auth/data/remote/auth_remote_data_source.dart';

final class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final AuthAPI _authAPI = AuthAPI(AppDio.instance, baseUrl: Flavor.apiUrl);

  @override
  Future<UserCredential> signInWithApple() async {
    final appleProvider = AppleAuthProvider();

    return _firebaseAuth.signInWithProvider(appleProvider);
  }

  @override
  Future<UserCredential> signInWithGoogle() async {
    // // Trigger the authentication flow
    final googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) throw SnsOAuthLoginCancledException();

    // Obtain the auth details from the request
    final googleAuth = await googleUser.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    return _firebaseAuth.signInWithCredential(credential);
  }

  @override
  Future<UserCredential> signInWithKakao() async {
    OAuthToken oAuthToken;

    if (await isKakaoTalkInstalled()) {
      try {
        oAuthToken = await UserApi.instance.loginWithKakaoTalk();
      } catch (error) {
        // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
        // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
        if (error is PlatformException && error.code == 'CANCELED') {
          throw error;
        }

        // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
        try {
          oAuthToken = await UserApi.instance.loginWithKakaoAccount();
        } catch (error) {
          // TODO: 에러 핸들링 좀 더 꼼꼼하게 필요
          throw error;
        }
      }
    } else {
      try {
        oAuthToken = await UserApi.instance.loginWithKakaoAccount();
      } catch (error) {
        throw error;
      }
    }

    final credential =
        OAuthProvider(SnsProviderType.kakao.providerId).credential(
      idToken: oAuthToken.idToken,
    );

    final userCredential = await _firebaseAuth.signInWithCredential(credential);

    return userCredential;
  }

  @override
  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }
}
