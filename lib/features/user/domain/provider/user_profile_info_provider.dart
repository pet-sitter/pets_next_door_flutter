// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:pets_next_door_flutter/src/features/pet/domain/pet.dart';
// import 'package:pets_next_door_flutter/src/features/sign_up/domain/sign_up_info.dart';
// import 'package:pets_next_door_flutter/src/features/user/domain/user_info.dart';

// final userProfileInfoStateProvider = StateNotifierProvider.autoDispose
//     .family<UserProfileInfoNotifier, UserProfileInfo, UserInfo>(
//   (ref, userInfo) {
//     return UserProfileInfoNotifier(
//       userInfo: userInfo,
//     );
//   },
// );

// class UserProfileInfoNotifier extends StateNotifier<UserEditProfileInfo> {
//   UserProfileInfoNotifier({
//     required UserInfo userInf
//             nickname: userInfo.nickname,
//             profileImageId: userInfo.profileImageId,
//             pets: userInfo.pets,
//           ),
//         );

//   void setNickname(String nickname) {
//     state = state.copyWith(
//       nickname: nickname,
//     );
//   }

//   void setPetList(List<Pet> petList) {
//     state = state.copyWith(pets: petList);
//   }
// }

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/core/constants/enums.dart';
import 'package:pets_next_door_flutter/features/pet/domain/pet.dart';

final petListNotifierProvider = NotifierProvider<PetListNotifier, List<Pet>>(
  PetListNotifier.new,
);

class PetListNotifier extends Notifier<List<Pet>> {
  @override
  List<Pet> build() {
    return [
      Pet(
        name: '콩이',
        petType: PetType.dog,
        neutered: true,
        breed: '비숑프리제',
        birthDate: DateTime.now(),
        weight: 3.5,
      ),
    ];
  }

  void addPet(Pet newPet) {
    state.add(newPet);
  }

  void deletePet(int index) {
    state.removeAt(index);
  }
}
