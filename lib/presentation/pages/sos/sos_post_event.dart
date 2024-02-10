import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/core/enums/pet_type_filter.enum.dart';
import 'package:pets_next_door_flutter/core/enums/sort_type_filter.enum.dart';
import 'package:pets_next_door_flutter/presentation/pages/sos/providers/sos_post_filter_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/sos/providers/sos_post_paging_controller_provider.dart';

abstract interface class _SosPostViewEvent {
  void onSortChanged(WidgetRef ref, SortTypeFilter sortType);
  void onPetTypeChanged(WidgetRef ref, PetTypeFilter petType);
  void onListRefresh(WidgetRef ref);
}

mixin class SosPostViewEvent implements _SosPostViewEvent {
  @override
  void onSortChanged(WidgetRef ref, SortTypeFilter sortType) {
    ref.read(sosPostFilterProvider.notifier).setSortingFilter(sortType);
    ref.read(sosPagingControllerProvider).refresh();
  }

  @override
  void onPetTypeChanged(WidgetRef ref, PetTypeFilter petType) {
    ref.read(sosPostFilterProvider.notifier).setPetFilter(petType);
  }

  @override
  Future<void> onListRefresh(WidgetRef ref) async {
    ref.read(sosPagingControllerProvider).refresh();
  }
}
