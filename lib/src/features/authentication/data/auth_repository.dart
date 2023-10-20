import 'dart:async';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:pets_next_door_flutter/src/constants/enums.dart';
import 'package:pets_next_door_flutter/src/features/authentication/data/data_sources/local_auth_data_source.dart';
import 'package:pets_next_door_flutter/src/features/authentication/data/data_sources/sns_auth_data_source.dart';
import 'package:pets_next_door_flutter/src/features/authentication/domain/auth_status.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
  Future<AuthStatus> signIn({
    required SnsProviderType snsProviderType,
  });

  /// 현재 유저의 auth상태 (로그인 상태, 회원가입 중 상태, 새 유저 상태, 로그아웃 유저 상태)를 리턴하는 함수
  Future<AuthStatus> getAuthStatus();

  /// 유저를 로그아웃함과 동시에 로컬에 유저 auth 상태를 업데이트 하는 함수
  Future<Succeed> logout({required AuthStatus authStatus});
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
  Future<AuthStatus> signIn({
    required SnsProviderType snsProviderType,
  }) async {
    final oAuthInfo = await snsAuthDataSource.snsLogin();

    final userCredential = await oAuthInfo.when(
      credential: (credential) async => _signInWithCredential(credential),
      token: (token) async => _signInWithToken(token),
    );

    // TODO: 여기서 credential을 통해 가져온 정보를 통해서 로컬에 저장된 authStatus가 어떤지 판단해야 함

    // getAuthStatus();

    unawaited(
      _updateAuthStatus(
        authStatus: AuthStatus.signUpInProgress(
          providerType: snsProviderType,
        ),
      ),
    );

    return AuthStatus.loggedIn(providerType: snsProviderType);
  }

  @override
  Future<AuthStatus> getAuthStatus() async {
    return localAuthDataSource.getCurrentAuthStatus();
  }

  @override
  Future<Succeed> logout({required AuthStatus authStatus}) async {
    final currentLoginProviderType = authStatus.maybeWhen(
      loggedOut: (latelyLoggedInProviderType) => latelyLoggedInProviderType,
      signUpInProgress: (providerType) => providerType,
      loggedIn: (providerType) => providerType,
      orElse: () => null,
    );

    if (currentLoginProviderType == null) return false;

    return firebaseAuthDataSource.signOut().then(
          (_) => _updateAuthStatus(
            authStatus: AuthStatus.loggedOut(
              latestLogInProviderType: currentLoginProviderType,
            ),
          ),
        );
  }

  Future<Succeed> _updateAuthStatus({required AuthStatus authStatus}) async {
    await localAuthDataSource.updateAuthStatus(authStatus: authStatus);
    return true;
  }

  Future<UserCredential> _signInWithCredential(
    AuthCredential authCredential,
  ) async {
    final credential =
        await firebaseAuthDataSource.signInWithCredential(authCredential);

    return credential;
  }

  Future<UserCredential> _signInWithToken(OAuthToken authToken) {
    return firebaseAuthDataSource.signInWithCustomToken(authToken.accessToken);
  }
}

final authRepositoryProvider = Provider.autoDispose
    .family<AuthRepository, SnsAuthDataSource>((ref, snsAuthService) {
  return AuthRepositoryImpl(
    firebaseAuthDataSource: ref.watch(firebaseAuthProvider),
    localAuthDataSource: ref.watch(localAuthServiceProvider),
    snsAuthDataSource: snsAuthService,
  );
});

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final localAuthServiceProvider = Provider<LocalAuthDataSource>((ref) {
  return LocalAuthServiceImpl();
});
