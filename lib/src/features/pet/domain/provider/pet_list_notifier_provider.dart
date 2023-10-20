import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/src/constants/enums.dart';
import 'package:pets_next_door_flutter/src/features/pet/domain/pet.dart';
import 'package:pets_next_door_flutter/src/features/user/domain/user_nickname_form_state.dart';

final petListNotifierProvider = NotifierProvider<PetListNotifier, List<Pet>>(
  PetListNotifier.new,
);

class PetListNotifier extends Notifier<List<Pet>> {
  @override
  List<Pet> build() {
    return [
      Pet(
        name: '콩이',
        petType: PetType.dog,
        neutered: true,
        breed: '비숑프리제',
        birthDate: DateTime.now(),
        weight: 3.5,
      ),
    ];
  }

  void addPet(Pet newPet) {
    state.add(newPet);
  }

  void deletePet(int index) {
    state.removeAt(index);
  }
}
