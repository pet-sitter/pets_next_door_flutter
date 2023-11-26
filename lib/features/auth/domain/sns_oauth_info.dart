import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kakao_flutter_sdk_auth/kakao_flutter_sdk_auth.dart';
import 'package:pets_next_door_flutter/core/constants/enums.dart';

part 'sns_oauth_info.freezed.dart';

/// SNS로그인 후 발급받은 OAuth 정보를 담는 클래스
/// - [SnsOAuthInfo.credential] : sns로그인 후 OAuthCredential을 발급받았을 경우 생성되는 클래스
/// - [SnsOAuthInfo.token] : sns로그인 후 OAuthToken을 발급받았을 경우 생성되는 클래스
@freezed
sealed class SnsOAuthInfo with _$SnsOAuthInfo {
  factory SnsOAuthInfo.credential({
    required OAuthCredential authCredential,
    required String email,
    required SnsProviderType providerType,
  }) = SnsOAuthInfoCredential;

  factory SnsOAuthInfo.token({
    required OAuthToken authToken,
    required String email,
    required SnsProviderType providerType,
  }) = SnsOAuthInfoToken;
}
