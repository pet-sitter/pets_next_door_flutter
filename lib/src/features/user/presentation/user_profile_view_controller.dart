import 'package:pets_next_door_flutter/src/constants/enums.dart';
import 'package:pets_next_door_flutter/src/features/auth/data/auth_repository.dart';
import 'package:pets_next_door_flutter/src/features/pet/domain/pet.dart';
import 'package:pets_next_door_flutter/src/features/sign_up/domain/profile_form.dart';
import 'package:pets_next_door_flutter/src/features/user/presentation/layout/text_form_state.dart';
import 'package:pets_next_door_flutter/src/features/user/presentation/layout/user_nickname_notifier_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_profile_view_controller.g.dart';

typedef ProfileFilled = bool;

@riverpod
class UserProfileViewController extends _$UserProfileViewController {
  @override
  void build() {
    return;
  }

  Future<void> submit(
    ProfileForm newProfileForm,
  ) async {
    // final nickname = ref.watch(userNicknameNotifierProvider).maybeWhen(
    //       valid: (nickname) => nickname,
    //       orElse: () => null,
    //     );

    // if (nickname == null) return;
    newProfileForm.when(
        register: (snsOAuthInfo, nickname, profileImageId, pets) {
      final authRepository =
          ref.read(authRepositoryProvider(snsOAuthInfo.providerType));
    }, edit: (nickname, profileImageId, pets) {
      // final userRepository = ref.read(userRepo)
    });
  }

  bool isProfileValid() {
    return ref.watch(userNicknameNotifierProvider) is TextFormStateValid;
  }
}

@riverpod
Future<ProfileForm> userProfileFuture(UserProfileFutureRef ref, int id) async {
  return ProfileForm.edit(
      nickname: TextFormState.valid('이전닉네임'),
      profileImageId: 1,
      pets: [
        Pet(
          name: '콩이',
          petType: PetType.dog,
          neutered: true,
          breed: '비숑프리제',
          birthDate: DateTime.now(),
          weight: 3.5,
        ),
      ]);
}
