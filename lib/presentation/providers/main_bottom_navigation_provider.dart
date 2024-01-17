import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/core/constants/svgs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_bottom_navigation_provider.g.dart';

enum MainNavigationTab {
  home('홈', PNDSvgs.home),
  community('모임', PNDSvgs.community),
  chat('채팅', PNDSvgs.chat),
  myInfo('내 정보', PNDSvgs.user);

  final String label;
  final String iconPath;

  const MainNavigationTab(
    this.label,
    this.iconPath,
  );
}

@Riverpod(keepAlive: true)
class MainBottomNavigation extends _$MainBottomNavigation {
  @override
  MainNavigationTab build(StatefulNavigationShell shell) {
    return MainNavigationTab.values[shell.currentIndex];
  }

  set tab(MainNavigationTab value) => state = value;
}
