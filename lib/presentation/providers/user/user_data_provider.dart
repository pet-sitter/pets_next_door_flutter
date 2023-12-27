import 'package:pets_next_door_flutter/core/network_handling/exceptions/custom_exception.dart';
import 'package:pets_next_door_flutter/core/services/toast_service.dart';
import 'package:pets_next_door_flutter/features/user/entities/user_data_entity.dart';
import 'package:pets_next_door_flutter/features/user/user.dart';
import 'package:pets_next_door_flutter/presentation/providers/user/user_auth_provider.dart';
import 'package:pets_next_door_flutter/presentation/widgets/toast/app_toast.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_data_provider.g.dart';

@Riverpod(keepAlive: true)
class UserData extends _$UserData {
  @override
  FutureOr<UserDataEntity?> build() async {
    try {
      final userAuth = ref.watch(userAuthProvider);

      if (userAuth == null) throw const UnAuthorizedException();

      final userData = await getUserDataUseCase.call();

      return userData.fold(
        onSuccess: (userData) => userData,
        onFailure: (e) => throw e,
      );
    } catch (e) {
      ToastService.show(NormalToast(message: '$e'));
      rethrow;
    }
  }

  void updateUserData() {}
}

@riverpod
Future<String?> userToken(UserTokenRef ref) async {
  final userToken = await ref
      .watch(userDataProvider.future)
      .then((userData) => userData?.uid);

  final updateSucceed = await updateUserTokenUseCase.call(newToken: userToken);

  if (updateSucceed) {
    return getUserTokenUseCase.call();
  } else {
    throw LocalDataNotUpdatedException();
  }
}
