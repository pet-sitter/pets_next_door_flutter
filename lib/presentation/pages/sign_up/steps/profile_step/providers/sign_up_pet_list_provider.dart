import 'package:pets_next_door_flutter/features/pet/domain/pet.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_pet_list_provider.g.dart';

@riverpod
class SignUpPetList extends _$SignUpPetList {
  @override
  List<Pet> build() => [];

  void add(Pet pet) {
    state = state.toList()..add(pet);
  }

  void remove(Pet pet) {
    state = state.toList()..remove(pet);
  }

  void removeAt(int index) {
    state = state.toList()..removeAt(index);
  }
}
