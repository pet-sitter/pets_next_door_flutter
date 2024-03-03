import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/core/enums/pet_type.dart';
import 'package:pets_next_door_flutter/core/constants/sizes.dart';
import 'package:pets_next_door_flutter/features/pet/domain/pet.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet/widgets/pet_type_selection_button.dart';

class PetTypeSelectionButtonGroup extends ConsumerWidget {
  const PetTypeSelectionButtonGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          child: PetTypeSelectionButton(
            petType: PetType.cat,
            onTap: () => ref.read(petStateProvider.notifier).update(
                  (state) => state.copyWith(petType: PetType.cat),
                ),
            active: ref.read(petStateProvider.notifier).state.petType == PetType.cat,
          ),
        ),
        gapW12,
        Expanded(
          child: PetTypeSelectionButton(
            petType: PetType.dog,
            onTap: () => ref.read(petStateProvider.notifier).update(
                  (state) => state.copyWith(petType: PetType.dog),
                ),
            active: ref.read(petStateProvider.notifier).state.petType == PetType.dog,
          ),
        ),
      ],
    );
  }
}
