part of '../sos_post_detail_view.dart';

enum SosDetailViewTabType {
  conditions('급구조건'),
  details('상세내용'),
  petProfile('급구조건');

  const SosDetailViewTabType(this.label);
  final String label;
}

class _SosPostDetailTabView extends HookConsumerWidget with HomeEvent {
  const _SosPostDetailTabView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(
        initialLength: SosDetailViewTabType.values.length, initialIndex: 0);

    return Expanded(
      child: Column(
        children: [
          gapH16,
          _buildTabBarIndicator(tabController),
          _buildTabView(tabController),
        ],
      ),
    );
  }

  Expanded _buildTabView(TabController tabController) {
    return Expanded(
      child: TabBarView(
        controller: tabController,
        children: [
          _SosDetailConditionsTab(),
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
          )
        ],
      ),
    );
  }

  Container _buildTabBarIndicator(TabController tabController) {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(left: 24),
      alignment: Alignment.centerLeft,
      child: TabBar(
        tabAlignment: TabAlignment.start,
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
          ...SosDetailViewTabType.values.map(
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

class _SosDetailConditionsTab extends StatelessWidget {
  _SosDetailConditionsTab({
    super.key,
  });

  final List<String> conditionBadgeList = ['', '', ''];
  final List<String> conditionList = ['', '', ''];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      margin: EdgeInsets.only(top: 8),
      child: Column(
        children: [
          Container(
            height: 114,
            decoration: BoxDecoration(
              color: AppColor.of.gray10,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  spacing: 20,
                  children: conditionBadgeList
                      .map((e) => Column(
                            children: [
                              Container(
                                height: 56,
                                width: 56,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColor.of.white,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(2, 3),
                                          blurRadius: 9,
                                          color: AppColor.of.gray30
                                              .withOpacity(0.3))
                                    ]),
                              ),
                              gapH12,
                              Text(
                                'condition',
                                style: AppTextStyle.bodyRegular3,
                              ),
                            ],
                          ))
                      .toList(),
                )
              ],
            ),
          ),
          gapH16,
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'data',
                    style: AppTextStyle.headlineMedium2,
                  ),
                  Text(
                    'data',
                    style: AppTextStyle.headlineRegular3,
                  ),
                ],
              ),
              gapH8,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'data',
                    style: AppTextStyle.headlineMedium2,
                  ),
                  Text(
                    'data',
                    style: AppTextStyle.headlineRegular3,
                  ),
                ],
              ),
              gapH8,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'data',
                    style: AppTextStyle.headlineMedium2,
                  ),
                  Text(
                    'data',
                    style: AppTextStyle.headlineRegular3,
                  ),
                ],
              ),
              gapH8,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'data',
                    style: AppTextStyle.headlineMedium2,
                  ),
                  Text(
                    'data',
                    style: AppTextStyle.headlineRegular3,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
