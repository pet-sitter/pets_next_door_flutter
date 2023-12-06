import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'show_search_bar_provider.g.dart';

@riverpod
class ShowSearchBar extends _$ShowSearchBar {
  @override
  bool build() {
    return false;
  }

  set showSearchBar(bool show) => state = show;
}
