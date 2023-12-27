import 'package:pets_next_door_flutter/features/user/repositories/user_repository.dart';

final class GetUserTokenUseCase {
  const GetUserTokenUseCase(
    this._userRepository,
  );

  final UserRepository _userRepository;

  String? call() {
    return _userRepository.getUserToken();
  }
}
