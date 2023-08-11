import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/src/constants/enums.dart';

part 'auth_status.freezed.dart';

/// 유저의 Auth상태를 담는 클래스
/// - [AuthStatus.loggedOut] : 로그아웃 한 유저 상태, 마지막으로 로그인 한 sns정보를 가지고 있습니다.
/// - [AuthStatus.signUpInProgress] : 회원가입 과정 진행중인 유저,
/// sns로그인은 마쳤지만 자체 db에 회원가입은 되지 않은 상태입니다.
/// - [AuthStatus.loggedIn] : 로그인 된 유저 상태
@freezed
sealed class AuthStatus with _$AuthStatus {
  factory AuthStatus.newUser() = AuthStatusNewUser;

  factory AuthStatus.loggedOut({
    required SnsProviderType latestLogInProviderType,
  }) = AuthStatusLoggedOut;

  factory AuthStatus.signUpInProgress({required SnsProviderType providerType}) =
      AuthStatusSignUpInProgress;

  factory AuthStatus.loggedIn({required SnsProviderType providerType}) =
      AuthStatusLoggedIn;
}
