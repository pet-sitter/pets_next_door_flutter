import 'package:pets_next_door_flutter/src/features/sign_up/domain/profile_form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_profile_provider.g.dart';

@riverpod
class UserProfileController extends _$UserProfileController {
  @override
  // you can add named or positional parameters to the build method
  Future<ProfileForm> build(ProfileForm previousProfile) async {
    return previousProfile;
  }

  // other methods here
}
