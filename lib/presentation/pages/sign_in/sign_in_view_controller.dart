// import 'package:pets_next_door_flutter/src/constants/enums.dart';
// import 'package:pets_next_door_flutter/src/features/auth/data/auth_repository.dart';
// import 'package:pets_next_door_flutter/src/features/auth/domain/sns_oauth_info.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'login_view_controller.g.dart';

// @riverpod
// class LoginViewController extends _$LoginViewController {
//   @override
//   FutureOr<void> build() {
//     // ok to leave this empty if the return type is FutureOr<void>
//   }

//   Future<void> signIn({
//     required SnsProviderType selectedProvider,
//     required void Function(SnsOAuthInfo) onRegisterUser,
//     required void Function() onExistingUser,
//   }) async {
//     final authStatus =
//         await ref.watch(authSignInOrRegisterProvider(selectedProvider).future);

//     authStatus.when(
//       newUser: (snsOAuthInfo) {
//         onRegisterUser.call(snsOAuthInfo);
//       },
//       existingUser: (_) => onExistingUser.call(),
//     );

//     ref.invalidateSelf();
//   }

//   _saveLastestProvider(SnsProviderType selectedProvider) {
//     // TODO: 로컬에 마지막으로 선택한 프로바이더 저장하는 로직 구현하기
//   }
// }
