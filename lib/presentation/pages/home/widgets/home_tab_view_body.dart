part of '../home_view.dart';

class _HomeBody extends HookConsumerWidget with HomeEvent {
  const _HomeBody();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(
        initialLength: HomeTabType.values.length, initialIndex: 0);

    useEffect(() {
      void _listener() {
        ref.read(currentTabTypeProvider.notifier).tabType =
            HomeTabType.values[tabController.index];
      }

      tabController.addListener(_listener);
      return () => tabController.removeListener(_listener);
    }, [tabController]);

    return Expanded(
      child: Column(
        children: [
          _buildTabBarIndicator(tabController),
          const _SearchBar(),
          _buildTabView(tabController),
        ],
      ),
    );
  }

  Container _buildTabBarIndicator(TabController tabController) {
    return Container(
      height: 50,
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

  Expanded _buildTabView(TabController tabController) {
    return Expanded(
      child: Consumer(
        builder: (context, ref, child) => TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: tabController,
          children: [
            SosPostView(
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
