part of '../sign_up_profile_step.dart';

class _ProfileImageButton extends ConsumerWidget with SignUpEvent {
  const _ProfileImageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileImageFile = ref.watch(signUpProfileImgProvider);
    return GestureDetector(
      onTap: () => onTapProfileImageButton(ref),
      child: ProfileImage(
        size: 100,
        imageType: ImageType.file(profileImageFile),
      ),
    );
  }
}
