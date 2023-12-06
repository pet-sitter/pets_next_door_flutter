import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/providers/show_search_bar_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pet_sitting_mate_scroll_controller_provider.g.dart';

@riverpod
class PetSittingMateScrollController extends _$PetSittingMateScrollController {
  @override
  Raw<ScrollController> build() {
    final controller = ScrollController();

    void listenController() {
      _setSearchBarVisibility(controller);
    }

    controller.addListener(listenController);

    // ref.onDispose(() {
    //   scrollController.removeListener(scrollController.dispose);
    // });

    return controller;
  }

  void _setSearchBarVisibility(ScrollController controller) {
    if (controller.position.userScrollDirection == ScrollDirection.reverse) {
      ref.read(showSearchBarProvider.notifier).showSearchBar = false;
    }

    if (controller.position.userScrollDirection == ScrollDirection.forward) {
      ref.read(showSearchBarProvider.notifier).showSearchBar = true;
    }
  }
}
