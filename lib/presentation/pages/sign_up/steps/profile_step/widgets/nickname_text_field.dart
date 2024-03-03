part of '../sign_up_profile_step.dart';

class _NicknameTextField extends ConsumerWidget {
  const _NicknameTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomTextField(
      textFormState: ref.watch(signUpNicknameProvider),
      onChanged: ref.read(signUpNicknameProvider.notifier).validate,
    );
  }
}
