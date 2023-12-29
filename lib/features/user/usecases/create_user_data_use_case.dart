import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/sign_up/entities/sign_up_data_entity.dart';
import 'package:pets_next_door_flutter/features/user/entities/user_data_entity.dart';
import 'package:pets_next_door_flutter/features/user/repositories/user_repository.dart';

final class CreateUserDataUseCase {
  const CreateUserDataUseCase(
    this._userRepository,
  );

  final UserRepository _userRepository;

  Future<Result<UserDataEntity>> call(SignUpDataEntity userData) async {
    return _userRepository.createUserData(userData);
  }
}
