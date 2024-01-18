import 'package:flutter/material.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/providers/current_tab_type_provider.dart';
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
  @override
  Raw<TabController> build(TickerProvider tickerProvider) {
    final controller = TabController(
      length: HomeTabType.values.length,
      vsync: tickerProvider,
    );

    // 탭이 변할 때 마다 현재 탭이 무엇인지 업데이트한다
    controller.addListener(() {
      ref.read(currentTabTypeProvider.notifier).tabType =
          HomeTabType.values[state.index];
    });

    ref.onDispose(
      controller.dispose,
    );

    return controller;
  }
}
