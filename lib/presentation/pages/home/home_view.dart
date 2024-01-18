import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pets_next_door_flutter/core/constants/colors.dart';
import 'package:pets_next_door_flutter/core/constants/sizes.dart';
import 'package:pets_next_door_flutter/core/constants/text_style.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/home_event.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/providers/current_tab_type_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/providers/home_tab_controller_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/providers/show_search_bar_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet_mate/pet_sitting_mate_view.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet_sos/pet_sitting_sos_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          gapH8,
          // 위치 지정
          const _LocationButton(),
          const _TabViewBody(),
        ],
      ),
    );
  }
}

class _TabViewBody extends HookConsumerWidget {
  const _TabViewBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController =
        ref.watch(homeTabControllerProvider(useSingleTickerProvider()));

    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _TabBar(tabController: tabController),
          _SearchBar(),
          _TabContentView(tabController: tabController),
        ],
      ),
    );
  }
}

class _LocationButton extends StatelessWidget {
  const _LocationButton({super.key});

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
                  child: Text('용답동', style: AppTextStyle.headlineBold1),
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

class _TabContentView extends ConsumerWidget with HomeEvent {
  const _TabContentView({
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: TabBarView(
        controller: tabController,
        children: [
          PetSittingSosView(
            onScrollDirectionChanged: (di) => onScrollDirectionChanged(ref, di),
          ),
          PetSittingMateView(
            onScrollDirectionChanged: (di) => onScrollDirectionChanged(ref, di),
          ),
        ],
      ),
    );
  }
}

class _TabBar extends StatelessWidget {
  const _TabBar({
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
        unselectedLabelColor: AppColor.of.gray50,
        labelColor: AppColor.of.primaryGreen,
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        indicator: const UnderlineTabIndicator(borderRadius: BorderRadius.zero),
        tabs: [
          ...HomeTabType.values.map(
            (tab) => Text(
              tab.label,
              style: AppTextStyle.headlineMedium2,
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchBar extends ConsumerWidget with HomeEvent {
  const _SearchBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showSearchBar = ref.watch(showSearchBarProvider);
    final currentTab = ref.watch(currentTabTypeProvider);

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
          onSubmitted: (searchText) => onSearchTextSubmitted(
            searchText,
            currentTab,
          ),
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
