import 'package:pets_next_door_flutter/presentation/pages/home/home_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_tab_type_provider.g.dart';

/// 홈에서 현재 어떤 탭(돌봄급구/돌봄메이트)에 있는지
///
@Riverpod(keepAlive: true)
class CurrentTabType extends _$CurrentTabType {
  @override
  HomeTabType build() {
    return HomeTabType.values.first;
  }

  set tabType(HomeTabType tabType) {
    state = tabType;
  }
}
