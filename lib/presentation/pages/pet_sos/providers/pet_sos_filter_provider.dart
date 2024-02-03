import 'package:pets_next_door_flutter/core/enums/pet_type_filter.enum.dart';
import 'package:pets_next_door_flutter/core/enums/sort_type_filter.enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pet_sos_filter_provider.g.dart';

typedef PetSosFilters = ({
  SortTypeFilter sortFilter,
  PetTypeFilter petTypeFilter
});

/// 돌봄급구 필터 프로바이더
@Riverpod(keepAlive: true)
class PetSosSearchFilter extends _$PetSosSearchFilter {
  @override
  PetSosFilters build() {
    return (
      sortFilter: SortTypeFilter.newest,
      petTypeFilter: PetTypeFilter.dog
    );
  }

  void setSortingFilter(SortTypeFilter? filter) {
    if (filter == null) return;
    state = (sortFilter: filter, petTypeFilter: state.petTypeFilter);
  }

  void setPetFilter(PetTypeFilter? filter) {
    if (filter == null) return;
    state = (sortFilter: state.sortFilter, petTypeFilter: filter);
  }
}
