import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/src/features/auth/domain/sns_oauth_info.dart';
import 'package:pets_next_door_flutter/src/features/sign_up/domain/profile_form.dart';
import 'package:pets_next_door_flutter/src/features/user/presentation/layout/text_form_state.dart';

part 'user_data_model.freezed.dart';

@freezed
sealed class UserDataEntity with _$UserDataEntity {
  const UserDataEntity._();

  const factory UserDataEntity.newUser({
    required SnsOAuthInfo snsOAuthInfo,
    @Default(ProfileForm()) ProfileForm userProfile,
  }) = UserDataEntityNewUser;

  const factory UserDataEntity.existUser({
    @JsonKey(name: 'fbUid') required String firebaseUid,
    @Default(ProfileForm()) ProfileForm userProfile,
  }) = UserDataEntityExistUser;

  bool get isNicknameValid => userProfile.nickname is TextFormStateValid;
}
