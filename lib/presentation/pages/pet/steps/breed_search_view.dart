import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pets_next_door_flutter/core/constants/enums.dart';
import 'package:pets_next_door_flutter/features/pet/data/pet_repository.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breed_pagination_request.dart';

class BreedSearchView extends ConsumerWidget {
  const BreedSearchView({super.key});

  static const size = 20;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final petType = PetType.cat;
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              TextButton(onPressed: () {}, child: Text('고양이')),
              TextButton(onPressed: () {}, child: Text('강아지'))
            ],
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () {
                // dispose all the pages previously fetched. Next read will refresh them
                ref.invalidate(fetchBreedsProvider);
                // keep showing the progress indicator until the first page is fetched
                return ref.read(
                  fetchBreedsProvider(
                    paginationRequest: BreedsPaginationRequest(
                      page: 1,
                      size: size,
                      petType: PetType.cat,
                    ),
                  ).future,
                );
              },
              // TODO: Limit item count to pagination results
              child: ListView.custom(
                childrenDelegate: SliverChildBuilderDelegate((context, index) {
                  final page = index ~/ size + 1;
                  final indexInPage = index % size;
                  // use the fact that this is an infinite list to fetch a new page
                  // as soon as the index exceeds the page size
                  // Note that ref.watch is called for up to pageSize items
                  // with the same page and query arguments (but this is ok since data is cached)
                  final breedsList = ref.watch(
                    fetchBreedsProvider(
                      paginationRequest: BreedsPaginationRequest(
                        page: page,
                        size: size,
                        petType: petType,
                      ),
                    ),
                  );
                  return breedsList.when(
                    // TODO: Improve error handling
                    error: (err, stack) => Text('Error $err'),
                    loading: () => const CircularProgressIndicator(),
                    data: (breeds) {
                      if (indexInPage >= breeds.length) {
                        return const CircularProgressIndicator();
                      }
                      final breed = breeds[indexInPage];

                      return Text('');
                      // MovieListTile(
                      //   movie: movie,
                      //   debugIndex: index,
                      //   onPressed: () => context.goNamed(
                      //     AppRoute.movie.name,
                      //     pathParameters: {'id': movie.id.toString()},
                      //     extra: movie,
                      //   ),
                      // );
                    },
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
