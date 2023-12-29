import 'package:pets_next_door_flutter/features/sign_up/entities/sign_up_data_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_profile_provider.g.dart';

@riverpod
class UserProfileController extends _$UserProfileController {
  @override
  // you can add named or positional parameters to the build method
  Future<SignUpDataEntity> build(SignUpDataEntity previousProfile) async {
    return previousProfile;
  }

  // other methods here
}
