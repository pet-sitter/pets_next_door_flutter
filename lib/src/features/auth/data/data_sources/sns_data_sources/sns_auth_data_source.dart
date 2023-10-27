import 'package:firebase_auth/firebase_auth.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:pets_next_door_flutter/src/features/auth/domain/sns_oauth_info.dart';

typedef Valid = bool;

typedef SignInResultOAuthCredential = ({
  OAuthCredential oAuthCredential,
  String email
});

typedef SignInResultOAuthToken = ({
  OAuthToken oAuthToken,
  String email,
});

abstract class SnsAuthDataSource {
  /// 플랫폼 별로 sns로그인을 한 뒤 OAuth정보를 리턴하는 함수
  Future<SnsOAuthInfo> snsLogin();

  /// 플랫폼의 로그인 상태가 유효한지 리턴하는 함수
  Future<Valid> validateLoginStatus();
}
