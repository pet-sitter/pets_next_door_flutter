part of '../sign_up_profile_step.dart';

class _ProfileSubmitButton extends StatelessWidget with SignUpEvent {
  const _ProfileSubmitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: PNDSizes.p24),
          child: ActivationButton(
            onTap: () => onTapProfileNextButton(ref),
            text: '다음으로',
            isActive: ref.watch(signUpNicknameProvider) is TextFormStateValid,
          ),
        );
      },
    );
  }
}
