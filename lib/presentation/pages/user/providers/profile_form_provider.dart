// import 'package:pets_next_door_flutter/src/features/pet/domain/pet.dart';
// import 'package:pets_next_door_flutter/src/features/sign_up/domain/profile_form.dart';
// import 'package:pets_next_door_flutter/src/features/user/presentation/layout/text_form_state.dart';
// import 'package:riverpod/riverpod.dart';

// final profileFormNotifierProvider =
//     StateNotifierProvider.family<ProfileFormNotifier, ProfileForm, ProfileForm>(
//   (ref, previousProfile) => ProfileFormNotifier(previousProfile),
// );

// // @riverpod
// // class SignUpForm extends _$SignUpForm {
// //   @override
// //   ProfileForm build() {
// //     return ProfileForm.edit();
// //   }

// //   Future<void> updateNickname(String nickname) async {
// //     ref.read(userNicknameNotifierProvider.notifier).validateNickname(nickname);
// //     // TODO : 닉네임 형식 벨리데이션 추가
// //     final isExist = false;

// //     if (isExist) {
// //       state = state.copyWith(
// //         nickname: '',
// //       );
// //     } else {
// //       state = state.copyWith(
// //         nickname: nickname,
// //       );
// //     }
// //   }
// // }

// class ProfileFormNotifier extends StateNotifier<ProfileForm> {
//   ProfileFormNotifier(this._previousProfileForm) : super(_previousProfileForm) {
//     state = _previousProfileForm;
//   }

//   final ProfileForm _previousProfileForm;
//   // @override
//   // build() {
//   //   return ProfileForm.edit();
//   // }

//   void updateNickname(String nickname) async {
//     _validateNickname(nickname);
//     // ref.read(userNicknameNotifierProvider.notifier).validateNickname(nickname);
//     // // TODO : 닉네임 형식 벨리데이션 추가
//     // final isExist = false;

//     // if (isExist) {
//     //   state = state.copyWith(
//     //     nickname: '',
//     //   );
//     // } else {
//     //   state = state.copyWith(
//     //     nickname: nickname,
//     //   );
//     // }
//   }

//   void _validateNickname(String nickname) {
//     final nicknameRegExp = RegExp(r'^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,10}$');
//     if (nickname.isEmpty) {
//       state = state.copyWith(nickname: const TextFormState.empty());
//     } else if (nicknameRegExp.hasMatch(nickname)) {
//       state = state.copyWith(nickname: TextFormState.valid(nickname));
//     } else {
//       state = state.copyWith(
//           nickname: TextFormState.error(nickname, '사용할 수 없는 닉네임'));
//     }
//   }

//   void addPet(Pet newPet) {
//     state = state.copyWith(pets: [...state.pets, newPet]);
//   }
// }

import 'package:pets_next_door_flutter/features/pet/domain/pet.dart';
import 'package:pets_next_door_flutter/features/sign_up/domain/profile_form.dart';
import 'package:pets_next_door_flutter/presentation/pages/user/layout/text_form_state.dart';
import 'package:riverpod/riverpod.dart';

final profileFormNotifierProvider =
    NotifierProvider<ProfileFormNotifier, ProfileForm>(ProfileFormNotifier.new);

// @riverpod
// class SignUpForm extends _$SignUpForm {
//   @override
//   ProfileForm build() {
//     return ProfileForm.edit();
//   }

//   Future<void> updateNickname(String nickname) async {
//     ref.read(userNicknameNotifierProvider.notifier).validateNickname(nickname);
//     // TODO : 닉네임 형식 벨리데이션 추가
//     final isExist = false;

//     if (isExist) {
//       state = state.copyWith(
//         nickname: '',
//       );
//     } else {
//       state = state.copyWith(
//         nickname: nickname,
//       );
//     }
//   }
// }

class ProfileFormNotifier extends Notifier<ProfileForm> {
  @override
  ProfileForm build() {
    return ProfileForm();
  }

  void updateNickname(String nickname) async {
    _validateNickname(nickname);
    // ref.read(userNicknameNotifierProvider.notifier).validateNickname(nickname);
    // // TODO : 닉네임 형식 벨리데이션 추가
    // final isExist = false;

    // if (isExist) {
    //   state = state.copyWith(
    //     nickname: '',
    //   );
    // } else {
    //   state = state.copyWith(
    //     nickname: nickname,
    //   );
    // }
  }

  void _validateNickname(String nickname) {
    final nicknameRegExp = RegExp(r'^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,10}$');
    if (nickname.isEmpty) {
      state = state.copyWith(nickname: const TextFormState.empty());
    } else if (nicknameRegExp.hasMatch(nickname)) {
      state = state.copyWith(nickname: TextFormState.valid(nickname));
    } else {
      state = state.copyWith(
          nickname: TextFormState.error(nickname, '사용할 수 없는 닉네임'));
    }
  }

  void addPet(Pet newPet) {
    state = state.copyWith(pets: [...state.pets, newPet]);
  }
}
