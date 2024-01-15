// library forecast;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/features/pet/domain/pet.dart';
import 'package:pets_next_door_flutter/features/sign_up/data/dto/sign_up_data_dto.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_up/providers/sign_up_firebase_auth_data_provider.dart';

part 'sign_up_data_entity.freezed.dart';

@freezed
class SignUpDataEntity with _$SignUpDataEntity {
  const factory SignUpDataEntity({
    required FirebaseAuthData firebaseAuthData,
    required String nickname,
    @Default([]) List<Pet> pets,
    int? profileImageId,
  }) = _SignUpDataEntity;

  const SignUpDataEntity._();

  bool get hasAllEssentialData => nickname.isNotEmpty;

  SignUpDataDto toDto() => SignUpDataDto(
        email: firebaseAuthData.email,
        firebaseProviderType: firebaseAuthData.firebaseProviderType.name,
        firebaseUid: firebaseAuthData.firebaseUid,
        fullname: firebaseAuthData.fullname,
        nickname: nickname,
        // TODO: 아직 프로필 업로드 기능이 구현 안되어서 임시로 프로필 아이디 2로 넣었음
        profileImageId: profileImageId ?? 2,
      );
}
