import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/core/enums/pet_type_filter.enum.dart';
import 'package:pets_next_door_flutter/core/enums/sort_type_filter.enum.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet_sos/providers/pet_sos_filter_provider.dart';

abstract interface class _PetSosEvent {
  void onSortChanged(WidgetRef ref, SortTypeFilter sortType);
  void onPetTypeChanged(WidgetRef ref, PetTypeFilter petType);
}

mixin class PetSosEvent implements _PetSosEvent {
  @override
  void onSortChanged(WidgetRef ref, SortTypeFilter sortType) {
    ref.read(petSosFilterProvider.notifier).setSortingFilter(sortType);
  }

  @override
  void onPetTypeChanged(WidgetRef ref, PetTypeFilter petType) {
    ref.read(petSosFilterProvider.notifier).setPetFilter(petType);
  }
}
