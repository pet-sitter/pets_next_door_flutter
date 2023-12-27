import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/user/data/local/user_local_data_source.dart';
import 'package:pets_next_door_flutter/features/user/data/remote/user_remote_data_source.dart';
import 'package:pets_next_door_flutter/features/user/entities/user_data_entity.dart';
import 'package:pets_next_door_flutter/features/user/repositories/user_repository.dart';

final class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl(
    this._userRemoteDataSource,
    this._userLocalDataSource,
  );

  final UserRemoteDataSource _userRemoteDataSource;

  final UserLocalDataSource _userLocalDataSource;

  @override
  Future<void> createUserData(UserDataEntity data) async {
    // TODO: 추후 회원가입 로직에서 구현예정
  }

  @override
  Future<Result<UserDataEntity>> getUserData() async {
    try {
      final userData = await _userRemoteDataSource.getUserData();

      // remote data source에서 받아온 모델을 앱에서 사용하는 모델로 변환
      return Result.success(UserDataEntity.fromModel(userData));
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }

  @override
  String? getUserToken() {
    return _userLocalDataSource.getUserToken();
  }

  @override
  Future<bool> updateUserTokenLocal({required String? token}) async {
    return _userLocalDataSource.updateUserToken(token: token);
  }
}
