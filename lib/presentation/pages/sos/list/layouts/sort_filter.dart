part of '../sos_post_view.dart';

/// 돌봄급구 게시물 정렬 필터 영역
/// 드롭다운 메뉴 형식으로 구현되어 있음
class _SosSortFilter extends ConsumerWidget with SosPostViewEvent {
  const _SosSortFilter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSortFilter = ref.watch(sosPostFilterProvider).sortFilter;

    return PndDropdownButton<SortTypeFilter>(
      onSelected: (sort) => onSortChanged(ref, sort),
      selectedValueStr: selectedSortFilter.displayName,
      itemBuilder: (_) => SortTypeFilter.values
          .map(
            (sortType) => PndDropdownItem(
              value: sortType,
              valueStr: sortType.displayName,
            ),
          )
          .toList(),
    );
  }
}
