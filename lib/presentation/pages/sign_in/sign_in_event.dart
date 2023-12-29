import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/app/router/app_router.dart';
import 'package:pets_next_door_flutter/core/enums/sns_provider_type.dart';
import 'package:pets_next_door_flutter/core/network_handling/exceptions/custom_exception.dart';
import 'package:pets_next_door_flutter/presentation/providers/user/user_auth_provider.dart';
import 'package:pets_next_door_flutter/presentation/providers/user/user_data_provider.dart';

abstract interface class _SignInEvent {
  /// 구글 로그인을 진행한다.
  Future<void> onTapSignInWithGoogle(WidgetRef ref);

  /// 애플 로그인을 진행한다.
  Future<void> onTapSignInWithApple(WidgetRef ref);

  /// 애플 로그인을 진행한다.
  Future<void> onTapSignInWithKakao(WidgetRef ref);
}

mixin class SignInEvent implements _SignInEvent {
  /// 유저 데이터 여부 조회 후 회원가입을 완료했는지 여부에 따라 라우팅을 분기한다.
  Future<void> _routeByUserData(WidgetRef ref) async {
    return ref.read(userDataProvider.future).then(
      (userData) async {
        if (userData != null) {
          ref.context.goNamed(AppRoute.home.name);
        } else {
          ref.context.pushNamed(AppRoute.signUp.name);
        }
      },
    );
  }

  /// [provider]를 통해 OAuth 인증을 실행한다.
  Future<void> _signInOAuth(
    WidgetRef ref, {
    required SnsProviderType provider,
  }) async {
    try {
      await EasyLoading.show()
          .then(
            (_) => ref.read(userAuthProvider.notifier).signInOAuth(provider),
          )
          .then(
            (_) => _routeByUserData(ref),
          );
    } on SnsOAuthLoginCancledException {
      return;
    } finally {
      await EasyLoading.dismiss();
    }
  }

  @override
  Future<void> onTapSignInWithGoogle(WidgetRef ref) async {
    await _signInOAuth(ref, provider: SnsProviderType.google);
  }

  @override
  Future<void> onTapSignInWithApple(WidgetRef ref) async {
    await _signInOAuth(ref, provider: SnsProviderType.apple);
  }

  @override
  Future<void> onTapSignInWithKakao(WidgetRef ref) async {
    await _signInOAuth(ref, provider: SnsProviderType.kakao);
  }
}
