import 'package:pets_next_door_flutter/features/user/entities/user_data_entity.dart';
import 'package:pets_next_door_flutter/features/user/user.dart';
import 'package:pets_next_door_flutter/presentation/providers/user/user_auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_data_provider.g.dart';

@Riverpod(keepAlive: true)
class UserData extends _$UserData {
  @override
  FutureOr<UserDataEntity?> build() async {
    final userAuth = ref.watch(userAuthProvider);

    if (userAuth == null) throw Exception('로그인 필요');

    final userData = await getUserDataUseCase.call();

    return userData;
  }

  void updateUserData() {}
}
