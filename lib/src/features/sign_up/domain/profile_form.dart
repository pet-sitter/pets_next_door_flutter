// library forecast;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/src/features/pet/domain/pet.dart';
import 'package:pets_next_door_flutter/src/features/user/presentation/layout/text_form_state.dart';

part 'profile_form.freezed.dart';

// @freezed
// class UserProfileInfo with _$UserProfileInfo {
//   factory UserProfileInfo({
//     String? profileImageUrl,
//     String? nickname,
//     List<Pet>? pets,
//   }) = _UserProfileInfo;
// }

// @freezed
// sealed class ProfileForm with _$ProfileForm {
//   const ProfileForm._();

//   const factory ProfileForm.register({
//     required SnsOAuthInfo snsOAuthInfo,
//     @Default(TextFormState.empty()) TextFormState nickname,
//     @Default([]) List<Pet> pets,
//     int? profileImageId,
//   }) = ProfileFormRegister;

//   const factory ProfileForm.edit({
//     @Default(TextFormState.empty()) TextFormState nickname,
//     @Default([]) List<Pet> pets,
//     int? profileImageId,
//   }) = ProfileFormEdit;

//   bool get isNicknameValid => nickname is TextFormStateValid;
// }

@freezed
class ProfileForm with _$ProfileForm {
  const factory ProfileForm({
    @Default(TextFormState.empty()) TextFormState nickname,
    @Default([]) List<Pet> pets,
    int? profileImageId,
  }) = _ProfileForm;

  const ProfileForm._();

  bool get isFormValid => nickname is TextFormStateValid;
}
