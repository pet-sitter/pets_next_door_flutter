import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/src/features/user/domain/user_nickname_form_state.dart';

final userNicknameNotifierProvider =
    NotifierProvider<UserNicknameFormNotifier, TextFormState>(
  UserNicknameFormNotifier.new,
);

class UserNicknameFormNotifier extends Notifier<TextFormState> {
  @override
  TextFormState build() {
    return const TextFormState.empty('');
  }

  void validateNickname(String nickname) {
    final nicknameRegExp = RegExp(r'^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,10}$');
    if (nickname.isEmpty) {
      state = const TextFormState.empty('');
    } else if (nicknameRegExp.hasMatch(nickname)) {
      state = TextFormState.valid(nickname);
    } else {
      state = TextFormState.error(nickname, '사용할 수 없는 닉네임');
    }
  }
}
