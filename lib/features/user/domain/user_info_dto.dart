// library forecast;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/core/constants/enums.dart';
import 'package:pets_next_door_flutter/features/pet/domain/pet.dart';
import 'package:pets_next_door_flutter/features/sign_up/domain/profile_form.dart';
import 'package:pets_next_door_flutter/features/user/domain/user_data_model.dart';
import 'package:pets_next_door_flutter/presentation/pages/user/layout/text_form_state.dart';

part 'user_info_dto.freezed.dart';
part 'user_info_dto.g.dart';

/// 회원가입을 위해 DB에 등록하는데 필요한 데이터 목록
/// - [email] : 유저의 이메일
/// - [providerType] : 회원가입에 사용한 sns provider 타입
/// - [firebaseUid] : firebase로그인 후 발급받은 firebas uid
/// - [fullname] : 유저의 실제 이름
/// - [nickname] : 유저가 설정한 닉네임
@freezed
class UserInfoDto with _$UserInfoDto {
  factory UserInfoDto({
    required String email,
    @JsonKey(name: 'fbProviderType') required SnsProviderType providerType,
    @JsonKey(name: 'fbUid') required String firebaseUid,
    String? fullname,
    String? nickname,
    int? profileImageId,
    List<Pet>? pets,
  }) = _UserInfoDto;

  const UserInfoDto._();

  factory UserInfoDto.fromJson(Map<String, dynamic> json) =>
      _$UserInfoDtoFromJson(json);

  UserDataEntity toExistingUserModel() => UserDataEntity.existUser(
        firebaseUid: firebaseUid,
        userProfile: ProfileForm(
          nickname: TextFormState.valid(nickname ?? ''),
          pets: pets ?? [],
          profileImageId: profileImageId,
        ),
      );
}
