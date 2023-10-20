import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/src/constants/enums.dart';
import 'package:pets_next_door_flutter/src/features/authentication/data/auth_repository.dart';
import 'package:pets_next_door_flutter/src/features/authentication/data/data_sources/sns_auth_data_source.dart';
import 'package:pets_next_door_flutter/src/features/authentication/domain/auth_status.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_view_controller.g.dart';

@riverpod
class LoginViewController extends _$LoginViewController {
  @override
  FutureOr<void> build() {
    // ok to leave this empty if the return type is FutureOr<void>
  }

  Future<void> updateAuthStatus() async {
    // final currentAuthStatus =
    //     await ref.read(authRepositoryProvider).getAuthStatus();
  }

  Future<AuthStatus> signIn(SnsProviderType selectedProvider) async {
    final authService = switch (selectedProvider) {
      SnsProviderType.apple => ref.watch(appleAuthServiceProvider),
      SnsProviderType.google => ref.watch(googleAuthServiceProvider),
      SnsProviderType.kakao => ref.watch(kakaoAuthServiceProvider),
    };

    final authRepository = ref.watch(authRepositoryProvider(authService));

    final userCredential =
        await authRepository.signIn(snsProviderType: selectedProvider);

    return AuthStatus.signUpInProgress(providerType: selectedProvider);
  }
}
