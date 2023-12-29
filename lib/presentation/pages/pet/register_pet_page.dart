import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet/providers/register_pet_step_controller_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet/register_pet_event.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet/steps/register_pet_detail_view.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet/steps/register_pet_initial_view.dart';
import 'package:pets_next_door_flutter/presentation/widgets/appbar/appbar.dart';

class RegisterPetPage extends StatelessWidget {
  const RegisterPetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: _AppBar(),
        body: _Body(),
      ),
    );
  }
}

class _AppBar extends StatelessWidget
    with RegisterPetEvent
    implements PreferredSizeWidget {
  const _AppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return PNDAppBar(
      title: '반려동물 추가하기',
      leading: _buildBackButton(),
    );
  }

  Widget _buildBackButton() {
    return Consumer(
      builder: (_, ref, __) {
        final canBack = ref.watch(canBackToPreviousStepProvider);

        return canBack
            ? PNDBackButton(
                onTapBackbutton: () => onTapBackButton(ref),
              )
            : PNDBackButton(
                onTapBackbutton: () => ref.context.pop(),
              );
      },
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(registerPetStepControllerProvider);

    return SafeArea(
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          RegisterPetInitialView(),
          RegisterPetDetailView(),
        ],
      ),
    );
  }
}
