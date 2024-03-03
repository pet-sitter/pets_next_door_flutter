import 'package:pets_next_door_flutter/app/env/flavors.dart';
import 'package:pets_next_door_flutter/core/network_handling/app_dio.dart';
import 'package:pets_next_door_flutter/features/sign_up/data/dto/sign_up_data_dto.dart';
import 'package:pets_next_door_flutter/features/user/api/user_api.dart';
import 'package:pets_next_door_flutter/features/user/data/dto/user_data_dto.dart';
import 'package:pets_next_door_flutter/features/user/data/remote/user_remote_data_source.dart';

final class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final UserAPI _userAPI = UserAPI(
    AppDio.instance,
    baseUrl: Flavor.apiUrl,
  );

  @override
  Future<UserDataDto> getUserData() {
    return _userAPI.getUser();
  }

  @override
  Future<UserDataDto> createUserData({required SignUpDataDto signUpData}) {
    return _userAPI.createUser(signUpData);
  }
}
