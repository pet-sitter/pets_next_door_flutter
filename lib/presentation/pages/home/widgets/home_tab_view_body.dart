part of '../home_view.dart';

class _HomeTabViewBody extends HookConsumerWidget with HomeEvent {
  const _HomeTabViewBody();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(
        initialLength: HomeTabType.values.length, initialIndex: 0);

    useEffect(() {
      tabController.addListener(() {
        // addListener를 통해 탭 변경 감지
        ref.read(currentTabTypeProvider.notifier).tabType =
            HomeTabType.values[tabController.index];
      });
      // useEffect 내부에서 dispose 함수를 반환하여 리소스 정리
      return () => tabController.dispose();
    }, [tabController]);

    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildTabBarIndicator(tabController),
          const _SearchBar(),
          _buildTabViewList(tabController),
        ],
      ),
    );
  }

  Container _buildTabBarIndicator(TabController tabController) {
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

  Expanded _buildTabViewList(TabController tabController) {
    return Expanded(
      child: Consumer(
        builder: (context, ref, child) => TabBarView(
          controller: tabController,
          children: [
            PetSosView(
              onScrollDirectionChanged: (direction) =>
                  onScrollDirectionChanged(ref, direction),
            ),
            PetMateView(
              onScrollDirectionChanged: (direction) =>
                  onScrollDirectionChanged(ref, direction),
            ),
          ],
        ),
      ),
    );
  }
}
