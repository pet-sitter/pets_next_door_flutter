import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_home_tab_controller_provider.g.dart';

@riverpod
class HomeHomeTabController extends _$HomeHomeTabController {
  final _pagingDuration = const Duration(milliseconds: 500);
  final _pagingCurve = Curves.easeOutExpo;

  @override
  Raw<TabController> build(TickerProvider tickerProvider, int tabLength) {
    final controller = TabController(
      length: tabLength,
      vsync: tickerProvider,
    );

    ref.onDispose(
      controller.dispose,
    );

    return controller;
  }

  void goToPageIndex(int index) {
    state.animateTo(
      index,
      duration: _pagingDuration,
      curve: _pagingCurve,
    );
  }
}

@riverpod
class CurrentHomeHomePageIndex extends _$CurrentHomeHomePageIndex {
  @override
  int build() {
    // final controller = ref.watch(homeHomePageControllerProvider);
    // void listenController() {
    //   state = controller.page?.truncate() ?? 0;
    // }

    // controller.addListener(
    //   listenController,
    // );

    // ref.onDispose(
    //   () => controller.removeListener(
    //     listenController,
    //   ),
    // );

    return 0;
  }
}
