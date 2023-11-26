import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pets_next_door_flutter/features/auth/domain/sns_oauth_info.dart';

part 'auth_status.freezed.dart';

/// 유저의 Auth상태를 담는 클래스
/// 중복 유저 상태를 체크하는 API를 사용한 후 판단 가능
/// - [AuthStatus.newUser] : 새로운 유저, 회원가입 필요함
/// - [AuthStatus.existingUser] : 계정이 있는 유저, 로그인 필요함
@freezed
sealed class AuthStatus with _$AuthStatus {
  factory AuthStatus.newUser({
    required SnsOAuthInfo snsOAuthInfo,
  }) = AuthStatusNewUser;

  factory AuthStatus.existingUser({
    required String uid,
  }) = AuthStatusExistingUser;
}
