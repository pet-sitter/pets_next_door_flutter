import 'package:pets_next_door_flutter/features/user/repositories/user_repository.dart';

final class UpdateUserTokenLocalUseCase {
  const UpdateUserTokenLocalUseCase(
    this._userRepository,
  );

  final UserRepository _userRepository;

  Future<bool> call({required String? newToken}) async {
    return _userRepository.updateUserTokenLocal(token: newToken);
  }
}
