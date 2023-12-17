import 'package:firebase_auth/firebase_auth.dart';
import 'package:pets_next_door_flutter/features/user/data/remote/user_remote_data_source.dart';
import 'package:pets_next_door_flutter/features/user/entities/user_data_entity.dart';
import 'package:pets_next_door_flutter/features/user/repositories/user_repository.dart';

final class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl(
    this._userRemoteDataSource,
  );

  final UserRemoteDataSource _userRemoteDataSource;

  @override
  Future<void> createUserData(UserDataEntity data) async {
    // TODO: 추후 회원가입 로직에서 구현예정
  }

  @override
  Future<UserDataEntity?> getUserData() async {
    final uid = FirebaseAuth.instance.currentUser!.uid;

    var userData = await _userRemoteDataSource.getUserData(uid);

    if (userData == null) {
      return null;
    }

    // remote data source에서 받아온 모델을 앱에서 사용하는 모델로 변환
    return UserDataEntity.fromModel(userData);
  }
}
