import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/src/constants/app_sizes.dart';
import 'package:pets_next_door_flutter/src/features/authentication/presentation/signup/auth_verify_notifier_provider.dart';
import 'package:pets_next_door_flutter/src/routing/app_router.dart';
import 'package:pets_next_door_flutter/src/utils/timer_notifier_provider.dart';
import 'package:pets_next_door_flutter/src/widgets/button/basic_activate_button.dart';

class PhoneAuthView extends StatelessWidget {
  const PhoneAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    // final phoneAuthController = ref.
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: InkWell(
          borderRadius: BorderRadius.circular(100),
          radius: 18,
          onTap: () => context.pop(),
          child: Icon(Icons.arrow_back_ios_rounded),
        ),
        titleSpacing: 0,
        title: const Text(
          '휴대폰 번호 인증하기',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(hintText: '휴대폰 번호'),
                      ),
                      const Positioned(
                        child: PhoneAuthCodeSendButton(),
                      ),
                    ],
                  ),
                  gapH16,
                  const PhoneAuthCodeInputField(),
                ],
              ),
              const PhoneAuthNextButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class PhoneAuthCodeInputField extends StatelessWidget {
  const PhoneAuthCodeInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final timerProvider = ref.watch(timerNotifierProvider);
        final authVerifyProvider =
            ref.watch(authVerifyNotifierProvider.notifier);
        return Stack(
          alignment: AlignmentDirectional.centerEnd,
          children: [
            TextFormField(
              decoration: const InputDecoration(hintText: '인증번호 6자리'),
              onChanged: authVerifyProvider.onAuthCodeChanged,
            ),
            Positioned(
              child: Text(
                timerProvider.timeLeftString,
              ),
            ),
          ],
        );
      },
    );
  }
}

class PhoneAuthNextButton extends StatelessWidget {
  const PhoneAuthNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final isAuthVerified = ref.watch(authVerifyNotifierProvider);

        return PNDBasicActivateButton(
          isActive: isAuthVerified,
          text: '다음으로',
          onTap: () => context.pushNamed(AppRoute.profile.name),
        );
      },
    );
  }
}

class PhoneAuthCodeSendButton extends StatelessWidget {
  const PhoneAuthCodeSendButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final authVerifyProvider =
            ref.watch(authVerifyNotifierProvider.notifier);
        final authVerified = ref.watch(authVerifyNotifierProvider);
        final sendCodeButtonState = ref.watch(sendAuthCodeStateProvider);

        return GestureDetector(
          onTap: () => (sendCodeButtonState != SendAuthCodeState.codeSent)
              ? authVerifyProvider.sendAuthCode()
              : null,
          child: Container(
            constraints: const BoxConstraints(maxWidth: 70, maxHeight: 32),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: authVerified ? Colors.grey : Colors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Text(
              '인증하기',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 13, height: 1),
            ),
          ),
        );
      },
    );
  }
}
