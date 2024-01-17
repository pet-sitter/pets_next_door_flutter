import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_tab_controller_provider.g.dart';

enum HomeTabType {
  petSos('돌봄급구'),
  petMate('돌봄메이트');

  const HomeTabType(this.label);

  final String label;
}

@riverpod
class HomeTabController extends _$HomeTabController {
  final _pagingDuration = const Duration(milliseconds: 500);
  final _pagingCurve = Curves.easeOutExpo;

  @override
  Raw<TabController> build(TickerProvider tickerProvider) {
    final controller = TabController(
      length: HomeTabType.values.length,
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
