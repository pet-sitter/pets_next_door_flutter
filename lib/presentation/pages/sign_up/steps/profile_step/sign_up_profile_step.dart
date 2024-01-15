import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pets_next_door_flutter/core/constants/sizes.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet/widgets/pet_profile_list_tile.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_up/sign_up_event.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_up/steps/profile_step/providers/sign_up_nickname_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_up/steps/profile_step/providers/sign_up_pet_list_provider.dart';
import 'package:pets_next_door_flutter/presentation/widgets/appbar/appbar.dart';
import 'package:pets_next_door_flutter/presentation/widgets/button/activation_button.dart';
import 'package:pets_next_door_flutter/presentation/widgets/button/basic_icon_button.dart';
import 'package:pets_next_door_flutter/presentation/widgets/image/profile_image.dart';
import 'package:pets_next_door_flutter/presentation/widgets/text_field/custom_text_field.dart';
import 'package:pets_next_door_flutter/presentation/widgets/text_field/text_form_state.dart';

part 'widgets/nickname_text_field.dart';
part 'widgets/pet_list_with_button.dart';
part 'widgets/profile_image_button.dart';
part 'widgets/profile_submit_button.dart';

class SignUpProfileStep extends HookConsumerWidget with SignUpEvent {
  const SignUpProfileStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const _ProfileSubmitButton(),
      appBar: const PNDAppBar(
        title: '프로필 설정하기',
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Column(
                  children: [
                    gapH24,
                    const _ProfileImageButton(),
                    gapH32,
                    const _NicknameTextField(),
                    gapH20,
                    const _PetListWithButton(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
