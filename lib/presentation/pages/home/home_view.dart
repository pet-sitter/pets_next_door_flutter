import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/app/router/app_router.dart';
import 'package:pets_next_door_flutter/core/constants/sizes.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/providers/home_home_page_controller_provider.dart';

// class HomeView extends ConsumerWidget {
//   const HomeView({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final pageList = [PetSittingSosView(), PetSittingMateView()];
//     final pageController = ref.watch(homeHomePageControllerProvider);
//     final currentIndex = ref.watch(currentHomeHomePageIndexProvider);
//     return DefaultTabController(
//       initialIndex: 0,
//       length: 2,
//       child: SafeArea(
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 24, top: 8),
//                   child: Text('용답동'),
//                 ),
//               ],
//             ),
//             TabBar(
//                 labelPadding: EdgeInsetsDirectional.all(0),
//                 indicatorColor: Colors.transparent,
//                 tabs: [
//                   Tab(
//                     text: PetSittingSosView.pageName,
//                   ),
//                   Tab(
//                     text: PetSittingMateView.pageName,
//                   ),
//                 ]),

//             // Expanded(
//             //   child: PageView.builder(
//             //     controller: pageController,
//             //     itemCount: pageList.length,
//             //     // physics: const NeverScrollableScrollPhysics(),
//             //     itemBuilder: (BuildContext context, int index) {
//             //       return pageList[index];
//             //     },
//             //   ),
//             // ),
//             Expanded(
//               child: TabBarView(children: [
//                 pageList[0],
//                 pageList[1],
//               ]),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView>
    with SingleTickerProviderStateMixin {
  final ScrollController sosController = ScrollController();
  final ScrollController mateController = ScrollController();

  bool _showSearchBar = true;
  bool isScrollingDown = false;
  @override
  void initState() {
    sosController.addListener(() => _scrollListener(sosController));
    mateController.addListener(() => _scrollListener(mateController));
    super.initState();
  }

  _scrollListener(ScrollController scrollController) {
    if (scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      _showSearchBar = false;
      setState(() {});
    }

    if (scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      _showSearchBar = true;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    // final pageList = [PetSittingSosView(), PetSittingMateView()];
    final tabController = ref.watch(homeHomePageControllerProvider(this));
    // final currentIndex = ref.watch(currentHomeHomePageIndexProvider);

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24, top: 8),
                  child: Text('용답동'),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 24, top: 8),
              alignment: Alignment.centerLeft,
              child: TabBar(
                  isScrollable: true,
                  padding: EdgeInsets.only(left: 0),
                  controller: tabController,
                  labelPadding: EdgeInsets.only(right: 16),
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.transparent,
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.red,
                  overlayColor: MaterialStatePropertyAll(Colors.transparent),
                  indicator:
                      UnderlineTabIndicator(borderRadius: BorderRadius.zero),
                  tabs: [
                    Text(
                      PetSittingSosView.pageName,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      PetSittingMateView.pageName,
                      style: TextStyle(fontSize: 20),
                    ),
                  ]),
            ),
            AnimatedContainer(
              height: _showSearchBar ? 79 : 0,
              duration: Duration(milliseconds: 100),
              padding:
                  EdgeInsets.only(top: 12, bottom: 12, left: 24, right: 24),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                  width: _showSearchBar ? 15 : 0,
                )),
              ),
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ),
            Expanded(
              child: TabBarView(controller: tabController, children: [
                PetSittingSosView(
                  scrollController: sosController,
                ),
                PetSittingMateView(
                  scrollController: mateController,
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class PetSittingSosView extends StatelessWidget {
  const PetSittingSosView({
    super.key,
    required this.scrollController,
  });

  static const pageName = '돌봄급구';

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              DropdownMenu(
                initialSelection: 0,
                inputDecorationTheme: InputDecorationTheme(
                    constraints: BoxConstraints(maxWidth: 100),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(0)),
                dropdownMenuEntries: [
                  DropdownMenuEntry(
                    value: 0,
                    label: 'asdf',
                  )
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
              controller: scrollController,
              shrinkWrap: true,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () => context.goNamed(AppRoute.signIn.name),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 88,
                            width: 88,
                            color: Colors.red,
                          ),
                          gapW8,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '푸들 한마리 급하게 ㅁㅇ너랴ㅐㅓㅁㅇㄴ래ㅑ머ㅔㅐㅑ',
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '23.03.21 ~ 23.03.28',
                                  softWrap: false,
                                ),
                                Text(
                                  '용답동',
                                  softWrap: false,
                                ),
                                Text(
                                  '시급 9000원',
                                  softWrap: false,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => Divider(),
              itemCount: 10),
        )
      ],
    );
  }
}

class PetSittingMateView extends StatelessWidget {
  const PetSittingMateView({
    super.key,
    required this.scrollController,
  });
  static const pageName = '돌봄메이트';

  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              DropdownMenu(
                initialSelection: 0,
                inputDecorationTheme: InputDecorationTheme(
                    constraints: BoxConstraints(maxWidth: 100),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(0)),
                dropdownMenuEntries: [
                  DropdownMenuEntry(
                    value: 0,
                    label: 'asdf',
                  )
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
              controller: scrollController,
              shrinkWrap: true,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () => context.goNamed(AppRoute.signIn.name),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 88,
                            width: 88,
                            color: Colors.yellow,
                          ),
                          gapW8,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '푸들 한마리 급하게 ㅁㅇ너랴ㅐㅓㅁㅇㄴ래ㅑ머ㅔㅐㅑ',
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '23.03.21 ~ 23.03.28',
                                  softWrap: false,
                                ),
                                Text(
                                  '용답동',
                                  softWrap: false,
                                ),
                                Text(
                                  '시급 9000원',
                                  softWrap: false,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => Divider(),
              itemCount: 10),
        )
      ],
    );
  }
}
