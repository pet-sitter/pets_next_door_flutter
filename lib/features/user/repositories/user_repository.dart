import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/sign_up/entities/sign_up_data_entity.dart';
import 'package:pets_next_door_flutter/features/user/entities/user_data_entity.dart';

abstract interface class UserRepository {
  Future<Result<UserDataEntity>> createUserData(SignUpDataEntity data);

  /// 서버에서 유저 정보를 가져옴
  Future<Result<UserDataEntity>> getUserData();

  /// 로컬에 유저 토큰 업데이트
  Future<bool> updateUserTokenLocal({required String? token});

  /// 로컬에 저장된 유저 토큰 가져오기
  String? getUserToken();
}
