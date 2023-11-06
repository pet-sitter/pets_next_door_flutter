import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/src/constants/enums.dart';
import 'package:pets_next_door_flutter/src/constants/sizes.dart';
import 'package:pets_next_door_flutter/src/features/pet/domain/pet.dart';
import 'package:pets_next_door_flutter/src/features/pet/presentation/widgets/pet_type_selection_button.dart';

class PetTypeSelectionButtonGroup extends ConsumerWidget {
  const PetTypeSelectionButtonGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPetType = ref.watch(petStateProvider).petType;

    return Row(
      children: [
        Expanded(
          child: PetTypeSelectionButton(
            petType: PetType.cat,
            onTap: () => ref.read(petStateProvider.notifier).update(
                  (state) => state.copyWith(petType: PetType.cat),
                ),
            active: selectedPetType == PetType.cat,
          ),
        ),
        gapW12,
        Expanded(
          child: PetTypeSelectionButton(
            petType: PetType.dog,
            onTap: () => ref.read(petStateProvider.notifier).update(
                  (state) => state.copyWith(petType: PetType.dog),
                ),
            active: selectedPetType == PetType.dog,
          ),
        ),
      ],
    );
  }
}
