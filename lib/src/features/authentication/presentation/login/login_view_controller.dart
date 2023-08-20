import 'package:firebase_auth/firebase_auth.dart';
import 'package:pets_next_door_flutter/src/constants/enums.dart';
import 'package:pets_next_door_flutter/src/features/authentication/data/auth_repository.dart';
import 'package:pets_next_door_flutter/src/features/authentication/data/service/sns_auth_service.dart';
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

  Future<void> signIn(SnsProviderType selectedProvider) async {
    final authService = switch (selectedProvider) {
      SnsProviderType.apple => AppleAuthService(),
      SnsProviderType.google => GoogleAuthService(),
      SnsProviderType.kakao => KakaoAuthService(),
    };

    final authRepository = ref.watch(authRepositoryProvider(authService));

    final userCredential =
        await authRepository.signIn(snsProviderType: selectedProvider);
  }
}
