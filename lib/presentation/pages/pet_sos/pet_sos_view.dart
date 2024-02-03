import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pets_next_door_flutter/app/router/app_router.dart';
import 'package:pets_next_door_flutter/core/constants/sizes.dart';
import 'package:pets_next_door_flutter/core/constants/text_style.dart';
import 'package:pets_next_door_flutter/core/enums/pet_type_filter.enum.dart';
import 'package:pets_next_door_flutter/core/enums/sort_type_filter.enum.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet_sos/pet_sos_event.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet_sos/providers/pet_sos_filter_provider.dart';

class PetSosView extends HookConsumerWidget {
  const PetSosView({
    super.key,
    this.onScrollDirectionChanged,
  });

  final void Function(ScrollDirection)? onScrollDirectionChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();

    final _scrollController = useScrollController();

    useEffect(() {
      void _callBack() {
        onScrollDirectionChanged
            ?.call(_scrollController.position.userScrollDirection);
      }

      _scrollController.addListener(_callBack);
      return () => _scrollController.removeListener(_callBack);
    }, [_scrollController]);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const _SortFilter(),
              const _PetFilter(),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
              controller: _scrollController,
              shrinkWrap: true,
              itemBuilder: (context, index) => ContentsListTile(),
              separatorBuilder: (context, index) => Divider(),
              itemCount: 10),
        )
      ],
    );
  }
}

class ContentsListTile extends StatelessWidget {
  const ContentsListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.goNamed(AppRoute.signIn.name),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 88,
              width: 88,
              color: Colors.yellow,
            ),
            gapW8,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '푸들 한마리 급하게 ㅁㅇ너랴ㅐㅓㅁㅇㄴ래ㅑ머ㅔㅐㅑ',
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '23.03.21 ~ 23.03.28',
                    softWrap: false,
                  ),
                  Text(
                    '용답동',
                    softWrap: false,
                  ),
                  Text(
                    '시급 9000원',
                    softWrap: false,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _SortFilter extends ConsumerWidget with PetSosEvent {
  const _SortFilter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton(
      surfaceTintColor: Colors.white,
      constraints: const BoxConstraints.tightFor(width: 90),
      position: PopupMenuPosition.under,
      child: Container(
          height: 45,
          child: Row(
            children: [
              Text(
                  ref.watch(petSosSearchFilterProvider).sortFilter.displayName),
              Icon(Icons.keyboard_arrow_down_rounded)
            ],
          )),
      onSelected: (sort) => onSortChanged(ref, sort),
      itemBuilder: (context) => SortTypeFilter.values
          .map((e) => PopupMenuItem(
                height: 40,
                padding: EdgeInsets.all(0),
                value: e,
                child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      e.displayName,
                    )),
              ))
          .toList(),
    );
  }
}

class _PetFilter extends ConsumerWidget with PetSosEvent {
  const _PetFilter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(petSosSearchFilterProvider);
    return Wrap(
      spacing: 8,
      children: [
        ...PetTypeFilter.values
            .map((petType) => GestureDetector(
                  onTap: () => onPetTypeChanged(ref, petType),
                  child: Container(
                    color: Colors.transparent,
                    height: 30,
                    child: Row(
                      children: [
                        (filter.petTypeFilter == petType)
                            ? Icon(
                                Icons.check_box_sharp,
                                size: 20,
                              )
                            : Icon(
                                Icons.check_box_outline_blank_outlined,
                                size: 20,
                              ),
                        gapW4,
                        Text(
                          petType.displayName,
                          style: AppTextStyle.bodyRegular3,
                        ),
                      ],
                    ),
                  ),
                ))
            .toList()
      ],
    );
  }
}
