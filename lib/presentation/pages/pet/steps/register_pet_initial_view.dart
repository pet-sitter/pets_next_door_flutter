import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/core/constants/sizes.dart';
import 'package:pets_next_door_flutter/features/pet/domain/pet.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet/layouts/pet_type_selection_button_group.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet/register_pet_event.dart';
import 'package:pets_next_door_flutter/presentation/widgets/button/activation_button.dart';

const ColorFilter greyscale = ColorFilter.matrix(<double>[
  0.2126,
  0.7152,
  0.0722,
  0,
  0,
  0.2126,
  0.7152,
  0.0722,
  0,
  0,
  0.2126,
  0.7152,
  0.0722,
  0,
  0,
  0,
  0,
  0,
  1,
  0,
]);

class RegisterPetInitialView extends StatelessWidget with RegisterPetEvent {
  const RegisterPetInitialView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: PNDSizes.p24),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('함께하는 반려동물을 선택해주세요.'),
                  gapH32,
                  PetTypeSelectionButtonGroup()
                ],
              ),
            ),
            RegisterPetInitialNextButton()
          ],
        ),
      ),
    );
  }
}

class RegisterPetInitialNextButton extends ConsumerWidget
    with RegisterPetEvent {
  const RegisterPetInitialNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ActivationButton(
      text: '다음으로',
      isActive: ref.watch(petStateProvider) != null,
      onTap: () => onTapRegisterPetDetailNext(ref),
    );
  }
}
