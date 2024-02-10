import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pets_next_door_flutter/features/sos/entities/sos_post_entity.dart';
import 'package:pets_next_door_flutter/features/sos/sos.dart';
import 'package:pets_next_door_flutter/presentation/pages/sos/providers/sos_post_filter_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sos_post_paging_controller_provider.g.dart';

const _pagingSize = 10;

@riverpod
class SosPagingController extends _$SosPagingController {
  @override
  Raw<PagingController<int, SosPostEntity>> build() {
    final controller = PagingController<int, SosPostEntity>(firstPageKey: 1);

    controller.addPageRequestListener((pageKey) => fetchPage(pageKey));

    ref.onDispose(() => controller.dispose());

    return controller;
  }

  Future<void> fetchPage(int pageKey) async {
    try {
      final newPosts = await getSosPostUseCase.call(
        size: _pagingSize,
        page: pageKey,
        sortType: ref.read(sosPostFilterProvider).sortFilter,
      );

      newPosts.fold(
        onSuccess: (breeds) {
          final isLastPage = breeds.length < _pagingSize;

          if (isLastPage) {
            state.appendLastPage(breeds);
          } else {
            state.appendPage(breeds, pageKey + 1);
          }
        },
        onFailure: (e) => print('::: Fold Error ::: $e'),
      );
    } catch (e) {
      print('::: Catch Error ::: $e');
    }
  }
}
