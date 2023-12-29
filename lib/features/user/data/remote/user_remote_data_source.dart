import 'package:pets_next_door_flutter/features/sign_up/data/dto/sign_up_data_dto.dart';
import 'package:pets_next_door_flutter/features/user/data/dto/user_data_dto.dart';

abstract interface class UserRemoteDataSource {
  Future<UserDataDto> getUserData();
  Future<UserDataDto> createUserData({required SignUpDataDto signUpData});
}
