import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/providers/home_tab_controller_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/providers/show_search_bar_provider.dart';

abstract interface class _HomeEvent {
  void onScrollDirectionChanged(WidgetRef ref, ScrollDirection direction);

  Future<void> onSearchTextSubmitted(String text, HomeTabType currentTab);
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
  Future<void> onSearchTextSubmitted(
      String text, HomeTabType currentTab) async {
    print(currentTab);
    // TODO: 검색 api 연결
  }
}
