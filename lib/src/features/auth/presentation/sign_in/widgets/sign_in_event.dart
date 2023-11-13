import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/src/constants/enums.dart';
import 'package:pets_next_door_flutter/src/features/auth/data/auth_repository.dart';
import 'package:pets_next_door_flutter/src/features/auth/domain/auth_status.dart';
import 'package:pets_next_door_flutter/src/features/user/domain/user_profile_view_state.dart';
import 'package:pets_next_door_flutter/src/routing/app_router.dart';

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
  Future<void> _routeByUserData(WidgetRef ref, AuthStatus authStatus) async {
    authStatus.when(newUser: (snsOAuthInfo) {
      ref.context.pushNamed(
        AppRoute.profile.name,
        extra: UserProfileViewState.register(snsOAuthInfo: snsOAuthInfo),
      );
    }, existingUser: (uid) {
      ref.context.goNamed(AppRoute.home.name);
    });
  }

  /// [provider]를 통해 OAuth 인증을 실행한다.
  Future<AuthStatus> _signInOAuth(
    WidgetRef ref, {
    required SnsProviderType provider,
  }) async {
    try {
      return await ref.watch(authSignInOrRegisterProvider(provider).future);
    } on FirebaseAuthException catch (e) {
      // ToastService.show(
      //   toast: NormalToast(message: e.message ?? ''),
      // );

      // return null;

      throw ();
    }
  }

  @override
  Future<void> onTapSignInWithGoogle(WidgetRef ref) async {
    await EasyLoading.show()
        .then(
          (_) => _signInOAuth(
            ref,
            provider: SnsProviderType.google,
          ),
        )
        .then(
          (authStatus) => _routeByUserData(ref, authStatus),
        )
        .then(
          (_) => EasyLoading.dismiss(),
        );
  }

  @override
  Future<void> onTapSignInWithApple(WidgetRef ref) async {
    await EasyLoading.show()
        .then(
          (_) => _signInOAuth(
            ref,
            provider: SnsProviderType.apple,
          ),
        )
        .then(
          (authStatus) => _routeByUserData(ref, authStatus),
        )
        .then(
          (_) => EasyLoading.dismiss(),
        );
  }

  @override
  Future<void> onTapSignInWithKakao(WidgetRef ref) async {
    await EasyLoading.show()
        .then(
          (_) => _signInOAuth(
            ref,
            provider: SnsProviderType.kakao,
          ),
        )
        .then(
          (authStatus) => _routeByUserData(ref, authStatus),
        )
        .then(
          (_) => EasyLoading.dismiss(),
        );
  }
}
