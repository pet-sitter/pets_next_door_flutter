import 'package:pets_next_door_flutter/core/enums/pet_type_filter.enum.dart';
import 'package:pets_next_door_flutter/core/enums/sort_type_filter.enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sos_post_filter_provider.g.dart';

typedef SosPostFilters = ({
  SortTypeFilter sortFilter,
  PetTypeFilter petTypeFilter
});

/// 돌봄급구 필터 프로바이더
@Riverpod()
class SosPostFilter extends _$SosPostFilter {
  @override
  SosPostFilters build() {
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
