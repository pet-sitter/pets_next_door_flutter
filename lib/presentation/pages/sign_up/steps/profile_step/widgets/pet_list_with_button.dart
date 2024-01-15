part of '../sign_up_profile_step.dart';

class _PetListWithButton extends StatelessWidget with SignUpEvent {
  const _PetListWithButton({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<AnimatedListState> _listStateKey = GlobalKey();

    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final petList = ref.watch(signUpPetListProvider);

        return Column(
          children: [
            AnimatedList(
              key: _listStateKey,
              shrinkWrap: true,
              initialItemCount: petList.length,
              itemBuilder: (context, index, animation) => PetProfileListTile(
                pet: petList[index],
              ),
            ),
            gapH20,
            PNDBasicIconButton(
              onTap: () => onTapAddPetButton(ref),
              text: '반려동물 추가하기',
              icon: const Icon(
                Icons.add,
                size: 16,
              ),
            )
          ],
        );
      },
    );
  }
}
