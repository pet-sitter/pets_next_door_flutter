import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:pets_next_door_flutter/src/constants/enums.dart';
import 'package:pets_next_door_flutter/src/features/authentication/data/service/local_auth_service.dart';
import 'package:pets_next_door_flutter/src/features/authentication/data/service/sns_auth_service.dart';
import 'package:pets_next_door_flutter/src/features/authentication/domain/auth_status.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

typedef Succeed = bool;

abstract class AuthRepository {
  AuthRepository({
    required SnsAuthService snsAuthService,
    required FirebaseAuth firebaseAuthService,
    required LocalAuthService localAuthService,
  })  : _snsAuthService = snsAuthService,
        _localAuthService = localAuthService,
        _firebaseAuthService = firebaseAuthService,
        super();

  final SnsAuthService _snsAuthService;

  final LocalAuthService _localAuthService;

  final FirebaseAuth _firebaseAuthService;

  /// 의존성 주입된 SnsAuthService를 사용하여 sns 로그인하는 함수
  /// firebase로그인 후 firebase의 UserCredential을 리턴함
  Future<UserCredential> signIn({
    required SnsProviderType snsProviderType,
  });

  /// 현재 유저의 auth상태 (로그인 상태, 회원가입 중 상태, 새 유저 상태, 로그아웃 유저 상태)를 리턴하는 함수
  Future<AuthStatus> getAuthStatus();

  /// 유저를 로그아웃함과 동시에 로컬에 유저 auth 상태를 업데이트 하는 함수
  Future<Succeed> logout({required AuthStatus authStatus});
}

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required SnsAuthService snsAuthService,
    required FirebaseAuth firebaseAuthService,
    required LocalAuthService localAuthService,
  })  : _snsAuthService = snsAuthService,
        _localAuthService = localAuthService,
        _firebaseAuthService = firebaseAuthService,
        super();

  @override
  final SnsAuthService _snsAuthService;

  @override
  final LocalAuthService _localAuthService;

  @override
  final FirebaseAuth _firebaseAuthService;

  @override
  Future<UserCredential> signIn({
    required SnsProviderType snsProviderType,
  }) async {
    final oAuthInfo = await _snsAuthService.snsLogin();

    final userCredential = await oAuthInfo.when(
      credential: (credential) async => _signInWithCredential(credential),
      token: (token) async => _signInWithToken(token),
    );

    unawaited(
      _updateAuthStatus(
        authStatus: AuthStatus.signUpInProgress(
          providerType: snsProviderType,
        ),
      ),
    );

    return userCredential;
  }

  @override
  Future<AuthStatus> getAuthStatus() async {
    return _localAuthService.getCurrentAuthStatus();
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

    return _firebaseAuthService.signOut().then(
          (_) => _updateAuthStatus(
            authStatus: AuthStatus.loggedOut(
              latestLogInProviderType: currentLoginProviderType,
            ),
          ),
        );
  }

  Future<Succeed> _updateAuthStatus({required AuthStatus authStatus}) async {
    await _localAuthService.updateAuthStatus(authStatus: authStatus);
    return true;
  }

  Future<UserCredential> _signInWithCredential(
    AuthCredential authCredential,
  ) async {
    final credential =
        await _firebaseAuthService.signInWithCredential(authCredential);

    return credential;
  }

  Future<UserCredential> _signInWithToken(OAuthToken authToken) {
    return _firebaseAuthService.signInWithCustomToken(authToken.accessToken);
  }
}

final authRepositoryProvider = Provider.autoDispose
    .family<AuthRepository, SnsAuthService>((ref, snsAuthService) {
  return AuthRepositoryImpl(
    firebaseAuthService: ref.watch(firebaseAuthProvider),
    localAuthService: ref.watch(localAuthServiceProvider),
    snsAuthService: snsAuthService,
  );
});

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final localAuthServiceProvider = Provider<LocalAuthService>((ref) {
  return LocalAuthServiceImpl();
});
