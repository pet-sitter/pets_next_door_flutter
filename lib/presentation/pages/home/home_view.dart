import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/providers/home_home_page_controller_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/providers/show_search_bar_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet_mate/pet_sitting_mate_view.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet_sos/pet_sitting_sos_view.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // final pageList = [PetSittingSosView(), PetSittingMateView()];
    final tabController = ref.watch(homeHomePageControllerProvider(this));
    // final currentIndex = ref.watch(currentHomeHomePageIndexProvider);

    final showSearchBar = ref.watch(showSearchBarProvider);

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
              height: showSearchBar ? 79 : 0,
              duration: Duration(milliseconds: 100),
              padding:
                  EdgeInsets.only(top: 12, bottom: 12, left: 24, right: 24),
              decoration: BoxDecoration(
                border: Border(
                  bottom: showSearchBar
                      ? BorderSide(
                          width: 15,
                        )
                      : BorderSide.none,
                ),
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
                PetSittingSosView(),
                PetSittingMateView(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
