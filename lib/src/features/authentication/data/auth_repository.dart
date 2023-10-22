import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:pets_next_door_flutter/src/constants/enums.dart';
import 'package:pets_next_door_flutter/src/features/authentication/data/data_sources/local_auth_data_source.dart';
import 'package:pets_next_door_flutter/src/features/authentication/data/data_sources/sns_auth_data_source.dart';
import 'package:pets_next_door_flutter/src/features/authentication/domain/auth_status.dart';
import 'package:pets_next_door_flutter/src/features/authentication/domain/sns_oauth_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.g.dart';

typedef Succeed = bool;

abstract class AuthRepository {
  AuthRepository({
    required this.snsAuthDataSource,
    required this.firebaseAuthDataSource,
    required this.localAuthDataSource,
  }) : super();

  final SnsAuthDataSource snsAuthDataSource;

  final LocalAuthDataSource localAuthDataSource;

  final FirebaseAuth firebaseAuthDataSource;

  /// 의존성 주입된 SnsAuthService를 사용하여 sns 로그인하는 함수
  /// firebase로그인 후 firebase의 UserCredential을 리턴함
  Future<SnsOAuthInfo> signInSns();

  /// 현재 유저의 auth상태 (로그인 상태, 회원가입 중 상태, 새 유저 상태, 로그아웃 유저 상태)를 리턴하는 함수
  Future<AuthStatus> getAuthStatus();

  /// 유저를 로그아웃함과 동시에 로컬에 유저 auth 상태를 업데이트 하는 함수
  Future<Succeed> logout({required AuthStatus authStatus});

  Future<bool> checkIfUserExists(SnsOAuthInfo snsOAuthInfo) async {
    // TODO: SNS로그인 이메일 결과값으로 로그인인지 회원가입인지 판단
    return false;
  }

  Future<UserCredential> signInFirebaseAuth(SnsOAuthInfo snsOAuthInfo);
}

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required this.snsAuthDataSource,
    required this.firebaseAuthDataSource,
    required this.localAuthDataSource,
  }) : super();

  @override
  final SnsAuthDataSource snsAuthDataSource;

  @override
  final LocalAuthDataSource localAuthDataSource;

  @override
  final FirebaseAuth firebaseAuthDataSource;

  @override
  Future<SnsOAuthInfo> signInSns() async {
    final oAuthInfo = await snsAuthDataSource.snsLogin();
    return oAuthInfo;
  }

  @override
  Future<UserCredential> signInFirebaseAuth(SnsOAuthInfo snsOAuthInfo) {
    return snsOAuthInfo.when(
      credential: (credential, email, _) => _signInWithCredential(credential),
      token: (token, email, _) => _signInWithToken(token),
    );
  }

  @override
  Future<bool> checkIfUserExists(SnsOAuthInfo snsOAuthInfo) async {
    // TODO: SNS로그인 이메일 결과값으로 로그인인지 회원가입인지 판단
    return false;
  }

  @override
  Future<AuthStatus> getAuthStatus() async {
    return localAuthDataSource.getCurrentAuthStatus();
  }

  // @override
  // Future<Succeed> logout({required AuthStatus authStatus}) async {
  //   final currentLoginProviderType = authStatus.maybeWhen(
  //     loggedOut: (latelyLoggedInProviderType) => latelyLoggedInProviderType,
  //     signUpInProgress: (providerType) => providerType,
  //     loggedIn: (providerType) => providerType,
  //     orElse: () => null,
  //   );

  //   if (currentLoginProviderType == null) return false;

  //   return firebaseAuthDataSource.signOut().then(
  //         (_) => _updateAuthStatus(
  //           authStatus: AuthStatus.loggedOut(
  //             latestLogInProviderType: currentLoginProviderType,
  //           ),
  //         ),
  //       );
  // }

  Future<Succeed> _updateAuthStatus({required AuthStatus authStatus}) async {
    await localAuthDataSource.updateAuthStatus(authStatus: authStatus);
    return true;
  }

  Future<UserCredential> _signInWithCredential(
    OAuthCredential authCredential,
  ) async {
    final credential =
        await firebaseAuthDataSource.signInWithCredential(authCredential);

    return credential;
  }

  Future<UserCredential> _signInWithToken(OAuthToken authToken) {
    return firebaseAuthDataSource.signInWithCustomToken(authToken.accessToken);
  }

  @override
  Future<Succeed> logout({required AuthStatus authStatus}) {
    // TODO: implement logout
    throw UnimplementedError();
  }
}

final authRepositoryProvider = Provider.autoDispose
    .family<AuthRepository, SnsProviderType>((ref, snsProviderType) {
  final snsAuthDataSource = switch (snsProviderType) {
    SnsProviderType.apple => ref.read(appleAuthServiceProvider),
    SnsProviderType.google => ref.read(googleAuthServiceProvider),
    SnsProviderType.kakao => ref.read(kakaoAuthServiceProvider),
  };
  return AuthRepositoryImpl(
    firebaseAuthDataSource: ref.watch(firebaseAuthProvider),
    localAuthDataSource: ref.watch(localAuthServiceProvider),
    snsAuthDataSource: snsAuthDataSource,
  );
});

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final localAuthServiceProvider = Provider<LocalAuthDataSource>((ref) {
  return LocalAuthServiceImpl();
});

@riverpod
Future<AuthStatus> authSignInOrRegister(
  AuthSignInOrRegisterRef ref,
  SnsProviderType providerType,
) async {
  final authRepository = ref.read(authRepositoryProvider(providerType));

  final snsOAuthInfo = await authRepository.signInSns();

  final isRegisteredUser = await authRepository.checkIfUserExists(snsOAuthInfo);

  if (isRegisteredUser) {
    final userCredential =
        await authRepository.signInFirebaseAuth(snsOAuthInfo);

    return AuthStatus.existingUser(firebaseUserCredential: userCredential);
  }

  return AuthStatus.newUser(snsOAuthInfo: snsOAuthInfo);
}
