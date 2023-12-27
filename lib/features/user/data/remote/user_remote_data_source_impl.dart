import 'package:pets_next_door_flutter/api/user_api.dart';
import 'package:pets_next_door_flutter/app/env/flavors.dart';
import 'package:pets_next_door_flutter/core/network_handling/app_dio.dart';
import 'package:pets_next_door_flutter/features/user/data/models/user_data_model.dart';
import 'package:pets_next_door_flutter/features/user/data/remote/user_remote_data_source.dart';

final class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final UserAPI _userAPI = UserAPI(
    AppDio.instance,
    baseUrl: Flavor.apiUrl,
  );

  @override
  Future<UserDataModel> getUserData() async {
    final userData = await _userAPI.getUserData();

    return userData;
  }
}
