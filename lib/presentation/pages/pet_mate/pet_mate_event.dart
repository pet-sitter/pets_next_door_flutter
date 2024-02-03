import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/core/enums/pet_type_filter.enum.dart';
import 'package:pets_next_door_flutter/core/enums/sort_type_filter.enum.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet_mate/providers/pet_mate_filter_provider.dart';

abstract interface class _PetMateEvent {
  void onSortChanged(WidgetRef ref, SortTypeFilter sortType);
  void onPetTypeChanged(WidgetRef ref, PetTypeFilter petType);
}

mixin class PetMateEvent implements _PetMateEvent {
  @override
  void onSortChanged(WidgetRef ref, SortTypeFilter sortType) {
    ref.read(petMateSearchFilterProvider.notifier).setSortingFilter(sortType);
  }

  @override
  void onPetTypeChanged(WidgetRef ref, PetTypeFilter petType) {
    ref.read(petMateSearchFilterProvider.notifier).setPetFilter(petType);
  }
}
