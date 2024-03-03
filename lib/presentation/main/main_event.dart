import 'package:go_router/go_router.dart';

mixin class MainEvent {
  void onTapBottomNavigationItem(
      {required int index, required StatefulNavigationShell navigationShell}) {
    navigationShell.goBranch(
      index,
      initialLocation: navigationShell.currentIndex == index,
    );
  }
}
