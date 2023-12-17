import 'package:dio/dio.dart';
import 'package:pets_next_door_flutter/api/user_api.dart';
import 'package:pets_next_door_flutter/features/user/data/models/user_data_model.dart';
import 'package:pets_next_door_flutter/features/user/data/remote/user_remote_data_source.dart';

final class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  // TODO: 아직 Dio의 네트워크 핸들링 로직이 없어서, 임시로 baseUrl ''로 넣음, 추후에 flavor에 따라 변경되도록 구현 필요
  final UserAPI _userAPI = UserAPI(Dio(), baseUrl: '');

  @override
  Future<UserDataModel?> getUserData(String uid) async {
    // TODO: 후에 API에서 header 정보로 자동으로 주는지 uid 값을 파라미터로 받는지 확인 필요
    final userData = await _userAPI.getUserData();

    return userData;
  }
}
