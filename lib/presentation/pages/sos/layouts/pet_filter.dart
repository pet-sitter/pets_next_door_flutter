part of '../sos_post_view.dart';

/// 돌봄급구 펫타입 필터 영역
/// Radio 버튼 형식으로 구현되어 있음
class _SosPetFilter extends ConsumerWidget with SosPostViewEvent {
  const _SosPetFilter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPetFilter = ref.watch(sosPostFilterProvider).petTypeFilter;

    return Wrap(
      spacing: 8,
      children: [
        ...PetTypeFilter.values
            .map((petType) => GestureDetector(
                  onTap: () => onPetTypeChanged(ref, petType),
                  child: PndRadioButtonItem(
                    groupValue: selectedPetFilter,
                    value: petType,
                    text: petType.displayName,
                  ),
                ))
            .toList()
      ],
    );
  }
}
