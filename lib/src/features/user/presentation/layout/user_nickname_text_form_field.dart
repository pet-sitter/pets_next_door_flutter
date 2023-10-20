import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/src/features/user/domain/provider/user_nickname_notifier_provider.dart';
import 'package:pets_next_door_flutter/src/widgets/text_field/custom_text_form_field.dart';

class UserNicknameTextFormField extends StatelessWidget {
  const UserNicknameTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (
        BuildContext context,
        WidgetRef ref,
        Widget? child,
      ) {
        final textFormState = ref.watch(userNicknameNotifierProvider);
        return PNDCustomTextFormField(
          controller: TextEditingController(),
          onChanged:
              ref.read(userNicknameNotifierProvider.notifier).validateNickname,
          textFormState: textFormState,
        );
      },
    );
  }
}
