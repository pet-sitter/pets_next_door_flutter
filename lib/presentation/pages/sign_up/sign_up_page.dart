import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_up/providers/sign_up_step_controller_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_up/steps/profile_step/sign_up_profile_step.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: _Body(),
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(signUpStepControllerProvider);

    return SafeArea(
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          SignUpProfileStep(),
          // TODO: 후에 회원가입 Step이 더 추가될 수도 있음
        ],
      ),
    );
  }
}
