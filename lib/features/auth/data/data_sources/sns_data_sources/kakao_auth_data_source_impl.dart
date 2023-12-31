import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:pets_next_door_flutter/core/enums/sns_provider_type.dart';
import 'package:pets_next_door_flutter/features/auth/data/data_sources/sns_data_sources/sns_auth_data_source.dart';
import 'package:pets_next_door_flutter/features/auth/domain/sns_oauth_info.dart';

final kakaoAuthServiceProvider =
    Provider.autoDispose<SnsAuthDataSource>((ref) => KakaoAuthDataSourceImpl());

class KakaoAuthDataSourceImpl implements SnsAuthDataSource {
  @override
  Future<SnsOAuthInfo> snsLogin() async {
    final signInResult = await _signInWithKakao();

    // TODO: 여기다가 우리 자체 API 태워서 customToken 가지고 오는 로직 넣어야 함

    return SnsOAuthInfo.token(
      authToken: signInResult!.oAuthToken,
      email: signInResult.email,
      providerType: SnsProviderType.kakao,
    );
  }

  Future<SignInResultOAuthToken?> _signInWithKakao() async {
// 카카오 로그인 구현 예제

// 카카오톡 실행 가능 여부 확인
// 카카오톡 실행이 가능하면 카카오톡으로 로그인, 아니면 카카오계정으로 로그인
    if (await isKakaoTalkInstalled()) {
      try {
        final oAuthToken = await UserApi.instance.loginWithKakaoTalk();
        final userEmail = await UserApi.instance
            .me()
            .then((value) => value.kakaoAccount?.email ?? '');

        return (oAuthToken: oAuthToken, email: userEmail);
      } catch (error) {
        // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
        // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
        if (error is PlatformException && error.code == 'CANCELED') {
          return null;
        }

        // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
        try {
          final oAuthToken = await UserApi.instance.loginWithKakaoAccount();
          final userEmail = await UserApi.instance
              .me()
              .then((value) => value.kakaoAccount?.email ?? '');

          return (oAuthToken: oAuthToken, email: userEmail);
        } catch (error) {
          // print('카카오계정으로 로그인 실패 $error');
          return null;
        }
      }
    } else {
      try {
        // print('카카오계정으로 로그인 성공');
        final oAuthToken = await UserApi.instance.loginWithKakaoAccount();
        final userEmail = await UserApi.instance
            .me()
            .then((value) => value.kakaoAccount?.email ?? '');

        return (oAuthToken: oAuthToken, email: userEmail);
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
