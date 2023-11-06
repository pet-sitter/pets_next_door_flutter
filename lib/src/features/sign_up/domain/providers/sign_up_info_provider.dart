

// final signUpInfoStateProvider = StateNotifierProvider.autoDispose
//     .family<RegistrationInfoNotifier, UserProfileInfo, SnsOAuthInfo>(
//   (ref, snsOAuthInfo) {
//     return RegistrationInfoNotifier(
//       snsOAuthInfo: snsOAuthInfo,
//     );
//   },
// );

// class RegistrationInfoNotifier extends StateNotifier<UserRegisterProfileInfo> {
//   RegistrationInfoNotifier({
//     required SnsOAuthInfo snsOAuthInfo,
//   }) : super(
//           UserRegisterProfileInfo(
//             snsOAuthInfo: snsOAuthInfo,
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
