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

      if (userAuth == null) return null;

      final userData = await getUserDataUseCase.call();

      return userData.fold(
        onSuccess: (userData) => userData,
        onFailure: (e) => null,
      );
    } catch (e) {
      ToastService.show(NormalToast(message: '$e'));
      rethrow;
    }
  }

  void updateUserData() {}
}
