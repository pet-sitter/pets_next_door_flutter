part of '../sign_up_profile_step.dart';

class _ProfileImageButton extends StatelessWidget with SignUpEvent {
  const _ProfileImageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ProfileImage(
        size: 100,
        imgUrl: '',
      ),
    );
  }
}
