import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pets_next_door_flutter/app/router/app_router.dart';
import 'package:pets_next_door_flutter/core/constants/colors.dart';
import 'package:pets_next_door_flutter/presentation/main/main_event.dart';
import 'package:pets_next_door_flutter/presentation/providers/main_bottom_navigation_provider.dart';
import 'package:pets_next_door_flutter/presentation/providers/user/user_auth_provider.dart';
import 'package:pets_next_door_flutter/presentation/widgets/base/base_page.dart';

class MainPage extends BasePage with MainEvent {
  const MainPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  bool get wrapWithSafeArea => true;

  @override
  Widget buildPage(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: navigationShell,
    );
  }

  @override
  Widget buildBottomNavigationBar(BuildContext context) => _BottomNavigationBar(
        currentTab: MainNavigationTab.values[navigationShell.currentIndex],
        onTapBottomNavigationItem: (index) => onTapBottomNavigationItem(
          index: index,
          navigationShell: navigationShell,
        ),
      );

  @override
  Widget? buildFloatingActionButton(BuildContext context) =>
      const _FloatingActionButton();
}

class _FloatingActionButton extends ConsumerWidget {
  const _FloatingActionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () async {
        final signOutSucceed =
            await ref.read(userAuthProvider.notifier).signOut();

        if (signOutSucceed) ref.context.goNamed(AppRoute.signIn.name);
      },
      child: Text('로그아웃'),
    );
  }
}

class _BottomNavigationBar extends ConsumerWidget {
  const _BottomNavigationBar({
    super.key,
    required this.currentTab,
    required this.onTapBottomNavigationItem,
  });

  final MainNavigationTab currentTab;
  final void Function(int) onTapBottomNavigationItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 60,
      child: Wrap(
        children: [
          BottomNavigationBar(
            currentIndex: currentTab.index,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: AppColor.of.primaryGreen,
            unselectedItemColor: AppColor.of.gray50,
            onTap: onTapBottomNavigationItem,
            items: [
              ...MainNavigationTab.values.mapIndexed(
                (index, e) => BottomNavigationBarItem(
                  label: e.label,
                  activeIcon: SvgPicture.asset(
                    e.iconPath,
                    colorFilter: ColorFilter.mode(
                      AppColor.of.primaryGreen,
                      BlendMode.srcIn,
                    ),
                  ),
                  icon: SvgPicture.asset(
                    e.iconPath,
                    colorFilter: ColorFilter.mode(
                      AppColor.of.gray50,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
