import 'package:pets_next_door_flutter/core/enums/pet_type_filter.enum.dart';
import 'package:pets_next_door_flutter/core/enums/sort_type_filter.enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pet_mate_filter_provider.g.dart';

typedef PetMateFilters = ({
  SortTypeFilter sortFilter,
  PetTypeFilter petTypeFilter
});

/// 돌봄메이트 필터 프로바이더
@Riverpod()
class PetMateFilter extends _$PetMateFilter {
  @override
  PetMateFilters build() {
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
