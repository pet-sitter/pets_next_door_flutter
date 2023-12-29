import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/features/sign_up/entities/sign_up_data_entity.dart';
import 'package:pets_next_door_flutter/presentation/pages/user/user_profile_view_event.dart';
import 'package:pets_next_door_flutter/presentation/widgets/text_field/custom_text_form_field.dart';

class UserNicknameTextFormField extends ConsumerWidget with UserProfileEvent {
  const UserNicknameTextFormField({
    this.nicknameController,
    super.key,
  });

  final TextEditingController? nicknameController;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return PNDCustomTextFormField(
      controller: nicknameController,
      onChanged: ref.read(signUpDataProvider.notifier).setNickname,
      textFormState: ref.watch(
        signUpDataProvider.select((profile) => profile.nickname),
      ),
    );
  }
}
