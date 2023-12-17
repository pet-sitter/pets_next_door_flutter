import 'package:firebase_auth/firebase_auth.dart';
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
}

/// 현재 앱 사용자가 인증되었는지 여부
@riverpod
bool isUserAuthorized(IsUserAuthorizedRef ref) =>
    ref.watch(userAuthProvider) != null;
