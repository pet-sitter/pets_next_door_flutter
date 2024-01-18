import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'show_search_bar_provider.g.dart';

/// 홈 검색 바의 표시여부
@riverpod
class ShowSearchBar extends _$ShowSearchBar {
  @override
  bool build() {
    return true;
  }

  set show(bool show) => state = show;
}
