import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_main_page_index_provider.g.dart';

/// 홈에서 현재 어떤 탭(돌봄급구/돌봄메이트)에 있는지
///
@Riverpod(keepAlive: true)
class CurrentMainPageIndexProvider extends _$CurrentMainPageIndexProvider {
  @override
  int build() {
    return 0;
  }

  set index(int newIndex) {
    state = newIndex;
  }
}
