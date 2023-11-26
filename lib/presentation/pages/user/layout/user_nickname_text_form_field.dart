import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/presentation/pages/user/providers/profile_form_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/user/user_profile_view_event.dart';
import 'package:pets_next_door_flutter/presentation/widgets/text_field/custom_text_form_field.dart';

class UserNicknameTextFormField extends ConsumerWidget with SignUpPageEvent {
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
      onChanged: ref.read(profileFormNotifierProvider.notifier).updateNickname,
      textFormState: ref.watch(
        profileFormNotifierProvider.select((profile) => profile.nickname),
      ),
    );
  }
}
