import 'package:pets_next_door_flutter/src/features/authentication/domain/auth_status.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_auth_service.g.dart';

abstract class LocalAuthService {
  Future<void> updateAuthStatus({required AuthStatus authStatus});

  Future<AuthStatus> getCurrentAuthStatus();

  Future<void> clearAuthStatus();
}

class LocalAuthServiceImpl implements LocalAuthService {
  @override
  Future<void> clearAuthStatus() {
    // TODO: implement clearAuthStatus
    throw UnimplementedError();
  }

  @override
  Future<AuthStatus> getCurrentAuthStatus() {
    // TODO: implement getCurrentAuthStatus
    throw UnimplementedError();
  }

  @override
  Future<void> updateAuthStatus({required AuthStatus authStatus}) {
    // TODO: implement updateAuthStatus
    throw UnimplementedError();
  }
}

@Riverpod(keepAlive: true)
LocalAuthService localAuthService(LocalAuthServiceRef ref) {
  return LocalAuthServiceImpl();
}
