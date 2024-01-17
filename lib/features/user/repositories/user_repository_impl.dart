import 'package:pets_next_door_flutter/core/utils/result.dart';
import 'package:pets_next_door_flutter/features/sign_up/entities/sign_up_data_entity.dart';
import 'package:pets_next_door_flutter/features/user/data/remote/user_remote_data_source.dart';
import 'package:pets_next_door_flutter/features/user/entities/user_data_entity.dart';
import 'package:pets_next_door_flutter/features/user/repositories/user_repository.dart';

final class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl(
    this._userRemoteDataSource,
  );

  final UserRemoteDataSource _userRemoteDataSource;

  @override
  Future<Result<UserDataEntity>> createUserData(SignUpDataEntity data) async {
    try {
      final userDto =
          await _userRemoteDataSource.createUserData(signUpData: data.toDto());

      // remote data source에서 받아온 모델을 앱에서 사용하는 모델로 변환
      return Result.success(UserDataEntity.fromDto(userDto));
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }

  @override
  Future<Result<UserDataEntity>> getUserData() async {
    try {
      final userData = await _userRemoteDataSource.getUserData();

      // remote data source에서 받아온 모델을 앱에서 사용하는 모델로 변환
      return Result.success(UserDataEntity.fromDto(userData));
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }
}
