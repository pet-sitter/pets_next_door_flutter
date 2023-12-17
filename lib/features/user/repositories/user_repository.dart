import 'package:pets_next_door_flutter/features/user/entities/user_data_entity.dart';

abstract interface class UserRepository {
  // TODO: 회원가입 기능에서 구현할 예정
  Future<void> createUserData(UserDataEntity data);
  Future<UserDataEntity?> getUserData();
}
