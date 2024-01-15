import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/auth/repositories/auth_repository.dart';

final class SignOutUseCase {
  const SignOutUseCase(
    this._authRepository,
  );

  final AuthRepository _authRepository;

  Future<Result<void>> call() async {
    return _authRepository.signOut();
  }
}
