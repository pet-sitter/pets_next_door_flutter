// library forecast;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/core/enums/sns_provider_type.dart';
import 'package:pets_next_door_flutter/features/pet/domain/pet.dart';
import 'package:pets_next_door_flutter/features/sign_up/data/dto/sign_up_data_dto.dart';
import 'package:pets_next_door_flutter/presentation/pages/user/layout/text_form_state.dart';
import 'package:pets_next_door_flutter/presentation/providers/user/user_auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_data_entity.freezed.dart';
part 'sign_up_data_entity.g.dart';

@Riverpod(keepAlive: true)
class SignUpData extends _$SignUpData {
  @override
  SignUpDataEntity build() {
    final userAuth = ref.watch(userAuthProvider);

    if (userAuth == null) throw 'no firebase user';

    if (userAuth.email == null) throw 'no email info';

    if (userAuth.displayName == null) throw 'no user fullname';

    return SignUpDataEntity(
        email: userAuth.email ?? '',
        firebaseUid: userAuth.uid,
        firebaseProviderType: SnsProviderType.getByProviderId(
            providerId: userAuth.providerData.first.providerId),
        fullname: userAuth.displayName ?? '');
  }

  setNickname(String nickname) {
    _validateNickname(nickname);
  }

  // TODO: Validate로직은 따로 빼야 할 것 같음
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

  setProfileImageId(int? profileImageId) {
    state = state.copyWith(profileImageId: profileImageId);
  }
}

@freezed
class SignUpDataEntity with _$SignUpDataEntity {
  const factory SignUpDataEntity({
    required SnsProviderType firebaseProviderType,
    required String firebaseUid,
    required String email,
    required String fullname,
    @Default(TextFormState.empty()) TextFormState nickname,
    @Default([]) List<Pet> pets,
    int? profileImageId,
  }) = _SignUpDataEntity;

  const SignUpDataEntity._();

  bool get hasAllEssentialData => nickname is TextFormStateValid;

  SignUpDataDto toDto() => SignUpDataDto(
        email: email,
        firebaseProviderType: firebaseProviderType.name,
        firebaseUid: firebaseUid,
        fullname: fullname,
        nickname: nickname.when(
            empty: () => '',
            error: (text, error) => '',
            valid: (nickname) => nickname),
        // TODO: 아직 프로필 업로드 기능이 구현 안되어서 임시로 프로필 아이디 2로 넣었음
        profileImageId: profileImageId ?? 2,
      );
}
