import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pets_next_door_flutter/core/constants/colors.dart';
import 'package:pets_next_door_flutter/core/constants/sizes.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/providers/home_tab_controller_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/providers/show_search_bar_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet_mate/pet_sitting_mate_view.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet_sos/pet_sitting_sos_view.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController =
        ref.watch(homeTabControllerProvider(useSingleTickerProvider()));

    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Column(
          children: [
            gapH8,
            const _HomeLoactionHeader(),
            _HomeTabBar(tabController: tabController),
            const _HomeSearchBar(),
            _HomeTabBarView(tabController: tabController),
          ],
        ),
      ),
    );
  }
}

class _HomeLoactionHeader extends StatelessWidget {
  const _HomeLoactionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Row(
        children: [
          Icon(Icons.place),
          gapW4,
          IntrinsicWidth(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  height: 30,
                  child: Text(
                    '용답동',
                    style: const TextStyle(fontSize: 23),
                  ),
                ),
                Positioned(
                    child: Container(
                  height: 10,
                  color: Colors.amber.withOpacity(0.2),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HomeTabBarView extends StatelessWidget {
  const _HomeTabBarView({
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: tabController,
        children: const [
          PetSittingSosView(),
          PetSittingMateView(),
        ],
      ),
    );
  }
}

class _HomeTabBar extends StatelessWidget {
  const _HomeTabBar({
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, top: 8),
      alignment: Alignment.centerLeft,
      child: TabBar(
        isScrollable: true,
        controller: tabController,
        labelPadding: const EdgeInsets.only(right: 16),
        indicatorColor: Colors.transparent,
        dividerColor: Colors.transparent,
        unselectedLabelColor: AppColor.of.gray90,
        labelColor: Colors.red,
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        indicator: const UnderlineTabIndicator(borderRadius: BorderRadius.zero),
        tabs: [
          ...HomeTabType.values.map(
            (tab) => Text(
              tab.label,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class _HomeSearchBar extends ConsumerWidget {
  const _HomeSearchBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showSearchBar = ref.watch(showSearchBarProvider);

    return AnimatedContainer(
      clipBehavior: Clip.hardEdge,
      height: showSearchBar ? 79 : 0,
      duration: const Duration(milliseconds: 100),
      padding: const EdgeInsets.only(top: 12, bottom: 12, left: 24, right: 24),
      decoration: BoxDecoration(
        border: Border(
          bottom: showSearchBar
              ? BorderSide(width: 15, color: AppColor.of.gray20)
              : BorderSide.none,
        ),
      ),
      child: Container(
        height: 40,
        width: double.infinity,
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 12),
            filled: true,
            fillColor: AppColor.of.gray20,
            focusColor: AppColor.of.gray20,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 12, right: 8),
              child: Icon(Icons.search),
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 40),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(4),
                gapPadding: 0),
          ),
        ),
      ),
    );
  }
}
