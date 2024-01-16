import 'package:pets_next_door_flutter/core/helper/validation_extension.dart';
import 'package:pets_next_door_flutter/presentation/widgets/text_field/text_form_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_nickname_provider.g.dart';

@riverpod
class SignUpNickname extends _$SignUpNickname {
  @override
  TextFormState build() {
    return TextFormState.empty();
  }

  validate(String nickname) {
    if (nickname.isEmpty) {
      state = TextFormState.empty();
    } else if (nickname.hasSpace) {
      state = TextFormState.error(nickname, '닉네임에 공백이 있습니다.');
    } else if (!nickname.hasProperCharacter) {
      state = TextFormState.error(nickname, '닉네임은 한글, 알파벳, 숫자만 가능합니다.');
    } else if (nickname.hasContainFWord) {
      state = TextFormState.error(nickname, '닉네임에 비속어가 있습니다.');
    } else {
      state = TextFormState.valid(nickname);
    }
  }

  Future<String> get checkNicknameDuplication async {
    try {
      // TODO: 여기서 닉네임 중복검사 하기
      final nickname = state.when(
        valid: (text) {
          if (text.isEmpty) return null;
          return text;
        },
        empty: () => null,
        error: (text, error) => null,
      );

      if (nickname == null) {
        throw '닉네임이 없습니다';
      } else {
        return nickname;
      }
    } catch (e) {
      rethrow;
    }
  }
}
