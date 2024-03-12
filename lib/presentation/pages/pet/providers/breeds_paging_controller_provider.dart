import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breed.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breeds_pagination_request.dart';
import 'package:pets_next_door_flutter/features/pet/domain/pet.dart';
import 'package:pets_next_door_flutter/features/pet/pet.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'breeds_paging_controller_provider.g.dart';

const pagingSize = 20;

@riverpod
class BreedsPagingController extends _$BreedsPagingController {
  @override
  Raw<PagingController<int, Breed>> build() {
    final controller = PagingController<int, Breed>(firstPageKey: 1);

    controller.addPageRequestListener((pageKey) => fetchPage(pageKey));

    ref.onDispose(() => controller.dispose());

    return controller;
  }

  Future<void> fetchPage(int pageKey) async {
    try {
      final newPage = await getBreedsUseCase.call(
        breedsPaginationRequest: new BreedsPaginationRequest(
          page: pageKey,
          size: pagingSize,
          petType: ref.read(petStateProvider.notifier).state.petType!,
        ),
      );

      newPage.fold(
        onSuccess: (page) {
          if (page.isLastPage) {
            state.appendLastPage(page.items);
          } else {
            state.appendPage(page.items, pageKey + 1);
          }
        },
        onFailure: (e) => print('::: Fold Error ::: $e'),
      );
    } catch (e) {
      print('::: Catch Error ::: $e');
    }
  }
}
