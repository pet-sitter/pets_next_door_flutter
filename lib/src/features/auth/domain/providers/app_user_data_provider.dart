import 'package:firebase_auth/firebase_auth.dart';
import 'package:pets_next_door_flutter/src/features/sign_up/domain/profile_form.dart';
import 'package:pets_next_door_flutter/src/features/user/domain/user_data_model.dart';
import 'package:pets_next_door_flutter/src/features/user/presentation/layout/text_form_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_user_data_provider.g.dart';

@Riverpod(keepAlive: true)
class AppUserData extends _$AppUserData {
  @override
  UserDataEntity? build() {
    // final userAuth = ref.watch(appUserAuthProvider);

    // if (userAuth == null) return null;

    // final userData = await _getUserDataUseCase(userAuth.uid);

    // TODO: firebaseuid로 가져오기

    if (FirebaseAuth.instance.currentUser == null) return null;

    return _getUserData(FirebaseAuth.instance.currentUser?.uid);
  }

  UserDataEntity? _getUserData(String? uid) {
    if (uid == null) return null;
    return UserDataEntity.existUser(
        firebaseUid: 'asjdfiojad',
        userProfile:
            ProfileForm(nickname: TextFormState.valid('기존유저닉네임'), pets: []));
  }
}
