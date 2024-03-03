import 'package:firebase_auth/firebase_auth.dart';
import 'package:pets_next_door_flutter/core/enums/sns_provider_type.dart';
import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/auth/data/remote/auth_remote_data_source.dart';
import 'package:pets_next_door_flutter/features/auth/repositories/auth_repository.dart';

final class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(
    this._authRemoteDataSource,
  );

  final AuthRemoteDataSource _authRemoteDataSource;

  @override
  Future<Result<UserCredential>> signInOAuth(
    SnsProviderType provider,
  ) async {
    try {
      final userCredential = await switch (provider) {
        SnsProviderType.google => _authRemoteDataSource.signInWithGoogle(),
        SnsProviderType.apple => _authRemoteDataSource.signInWithApple(),
        SnsProviderType.kakao => _authRemoteDataSource.signInWithKakao(),
      };

      return Result.success(userCredential);
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }

  @override
  Future<Result<void>> signOut() async {
    try {
      return Result.success(
        await _authRemoteDataSource.signOut(),
      );
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }
}
