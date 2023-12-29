import 'package:firebase_auth/firebase_auth.dart';
import 'package:pets_next_door_flutter/core/enums/sns_provider_type.dart';
import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/auth/repositories/auth_repository.dart';

final class SignInOAuthUseCase {
  const SignInOAuthUseCase(
    this._authRepository,
  );

  final AuthRepository _authRepository;

  Future<Result<UserCredential>> call(SnsProviderType provider) async {
    return _authRepository.signInOAuth(provider);
  }
}
