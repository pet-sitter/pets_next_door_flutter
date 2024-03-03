import 'package:firebase_auth/firebase_auth.dart';
import 'package:pets_next_door_flutter/core/enums/sns_provider_type.dart';
import 'package:pets_next_door_flutter/core/services/toast_service.dart';
import 'package:pets_next_door_flutter/features/auth/auth.dart';
import 'package:pets_next_door_flutter/presentation/widgets/toast/app_toast.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_auth_provider.g.dart';

/// 앱 사용자 권한 프로바이더
// TODO: 추후에 인증, 로그인, 로그아웃 기능 추가할 예정
@Riverpod(keepAlive: true)
class UserAuth extends _$UserAuth {
  @override
  User? build() {
    return FirebaseAuth.instance.currentUser;
  }

  /// OAuth 인증을 통해 로그인한다.
  Future<void> signInOAuth(SnsProviderType provider) async {
    final result = await signInOAuthUseCase(provider);
    result.fold(
      onSuccess: (value) {
        state = value.user;
      },
      onFailure: (e) {
        ToastService.show(NormalToast(message: '$e'));
        throw e;
      },
    );
  }

  /// 로그아웃을 시도한다.
  Future<bool> signOut() async {
    final result = await signOutUseCase();
    return result.fold(
      onSuccess: (value) {
        ref.invalidateSelf();
        return true;
      },
      onFailure: (e) {
        ToastService.show(
          NormalToast(message: '$e'),
        );
        return false;
      },
    );
  }
}

/// 현재 앱 사용자가 인증되었는지 여부
@riverpod
bool isUserAuthorized(IsUserAuthorizedRef ref) =>
    ref.watch(userAuthProvider) != null;
