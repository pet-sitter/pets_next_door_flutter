import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:pets_next_door_flutter/src/features/authentication/domain/sns_oauth_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

typedef Valid = bool;

abstract class SnsAuthService {
  /// 플랫폼 별로 sns로그인을 한 뒤 OAuth정보를 리턴하는 함수
  Future<SnsOAuthInfo> snsLogin();

  /// 플랫폼의 로그인 상태가 유효한지 리턴하는 함수
  Future<Valid> validateLoginStatus();
}

class KakaoAuthService implements SnsAuthService {
  @override
  Future<SnsOAuthInfo> snsLogin() async {
    final oAuthToken = await _signInWithKakao();

    // TODO: 여기다가 우리 자체 API 태워서 customToken 가지고 오는 로직 넣어야 함

    return SnsOAuthInfo.token(authToken: oAuthToken!);
  }

  Future<OAuthToken?> _signInWithKakao() async {
// 카카오 로그인 구현 예제

// 카카오톡 실행 가능 여부 확인
// 카카오톡 실행이 가능하면 카카오톡으로 로그인, 아니면 카카오계정으로 로그인
    if (await isKakaoTalkInstalled()) {
      try {
        return await UserApi.instance.loginWithKakaoTalk();
      } catch (error) {
        // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
        // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
        if (error is PlatformException && error.code == 'CANCELED') {
          return null;
        }

        // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
        try {
          return await UserApi.instance.loginWithKakaoAccount();
        } catch (error) {
          // print('카카오계정으로 로그인 실패 $error');
          return null;
        }
      }
    } else {
      try {
        // print('카카오계정으로 로그인 성공');
        return await UserApi.instance.loginWithKakaoAccount();
      } catch (error) {
        // print('카카오계정으로 로그인 실패 $error');
        return null;
      }
    }
  }

  @override
  Future<Valid> validateLoginStatus() {
    // TODO: implement validateLoginStatus
    throw UnimplementedError();
  }
}

class GoogleAuthService implements SnsAuthService {
  @override
  Future<SnsOAuthInfo> snsLogin() async {
    final oAuthCredential = await _signInWithGoogle();

    // Once signed in, return the UserCredential
    // return FirebaseAuth.instance.signInWithCredential(oAuthCredential);
    return SnsOAuthInfo.credential(authCredential: oAuthCredential);
  }

  Future<AuthCredential> _signInWithGoogle() async {
    final googleSignIn = GoogleSignIn();
    final isSignedIn = await googleSignIn.isSignedIn();
    final GoogleSignInAuthentication? googleAuth;

    if (isSignedIn && googleSignIn.currentUser != null) {
      final currentUser = googleSignIn.currentUser;

      googleAuth = await currentUser?.authentication;
    } else {
      // Trigger the authentication flow
      final googleUser = await googleSignIn.signIn();

      // Obtain the auth details from the request
      googleAuth = await googleUser?.authentication;
    }

    // Create a new credential
    return GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
  }

  @override
  Future<Valid> validateLoginStatus() {
    // TODO: implement validateLoginStatus
    throw UnimplementedError();
  }
}

class AppleAuthService implements SnsAuthService {
  @override
  snsLogin() {
    // TODO: implement snsLogin
    throw UnimplementedError();
  }

  @override
  Future<Valid> validateLoginStatus() {
    // TODO: implement validateLoginStatus
    throw UnimplementedError();
  }
}

final kakaoAuthServiceProvider =
    Provider<SnsAuthService>((ref) => KakaoAuthService());
final googleAuthServiceProvider =
    Provider<SnsAuthService>((ref) => GoogleAuthService());
final appleAuthServiceProvider =
    Provider<SnsAuthService>((ref) => AppleAuthService());
