import 'package:pets_next_door_flutter/src/features/auth/domain/auth_status.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_auth_data_source.g.dart';

abstract class LocalAuthDataSource {
  Future<void> updateAuthStatus({required AuthStatus authStatus});

  Future<AuthStatus> getCurrentAuthStatus();

  Future<void> clearAuthStatus();
}

class LocalAuthServiceImpl implements LocalAuthDataSource {
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
  Future<void> updateAuthStatus({required AuthStatus authStatus}) async {
    return;
  }
}

@Riverpod(keepAlive: true)
LocalAuthDataSource localAuthService(LocalAuthServiceRef ref) {
  return LocalAuthServiceImpl();
}
