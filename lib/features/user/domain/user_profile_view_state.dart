import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_next_door_flutter/features/auth/domain/sns_oauth_info.dart';

part 'user_profile_view_state.freezed.dart';

@freezed
sealed class UserProfileViewState with _$UserProfileViewState {
  factory UserProfileViewState.register({required SnsOAuthInfo snsOAuthInfo}) =
      UserProfileStateRegister;

  factory UserProfileViewState.edit({required int userId}) =
      UserProfileStateEdit;
}
