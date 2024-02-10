import 'package:pets_next_door_flutter/core/enums/pet_type_filter.enum.dart';
import 'package:pets_next_door_flutter/core/enums/sort_type_filter.enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pet_sos_filter_provider.g.dart';

typedef PetSosFilters = ({
  SortTypeFilter sortFilter,
  PetTypeFilter petTypeFilter
});

/// 돌봄급구 필터 프로바이더
@Riverpod()
class PetSosFilter extends _$PetSosFilter {
  @override
  PetSosFilters build() {
    return (
      sortFilter: SortTypeFilter.newest,
      petTypeFilter: PetTypeFilter.cat
    );
  }

  void setSortingFilter(SortTypeFilter filter) {
    state = (sortFilter: filter, petTypeFilter: state.petTypeFilter);
  }

  void setPetFilter(PetTypeFilter filter) {
    state = (sortFilter: state.sortFilter, petTypeFilter: filter);
  }
}
