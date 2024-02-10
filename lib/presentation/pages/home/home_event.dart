import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/core/services/toast_service.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/home_view.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/providers/current_tab_type_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/providers/show_search_bar_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet_mate/providers/pet_mate_filter_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/sos/providers/sos_post_filter_provider.dart';
import 'package:pets_next_door_flutter/presentation/widgets/toast/app_toast.dart';

abstract interface class _HomeEvent {
  void onScrollDirectionChanged(WidgetRef ref, ScrollDirection direction);
  void onSearchTextSubmitted(WidgetRef ref, String text);
}

mixin class HomeEvent implements _HomeEvent {
  @override
  void onScrollDirectionChanged(WidgetRef ref, ScrollDirection direction) {
    if (direction == ScrollDirection.reverse) {
      ref.read(showSearchBarProvider.notifier).show = false;
    }

    if (direction == ScrollDirection.forward) {
      ref.read(showSearchBarProvider.notifier).show = true;
    }
  }

  @override
  void onSearchTextSubmitted(WidgetRef ref, String text) {
    final tabType = ref.read(currentTabTypeProvider);
    final filter = switch (tabType) {
      HomeTabType.petMate => ref.read(petMateFilterProvider),
      HomeTabType.petSos => ref.read(sosPostFilterProvider),
    };
    // TODO: 필터 정보 가지고 게시물 불러오기 기능 구현 필요

    ToastService.show(NormalToast(
        message:
            '💙검색어 : $text\n🧡현재탭 : ${tabType.label}\n💚Sort : ${filter.sortFilter.displayName}\n💛Pet : ${filter.petTypeFilter.displayName}'));
  }
}
