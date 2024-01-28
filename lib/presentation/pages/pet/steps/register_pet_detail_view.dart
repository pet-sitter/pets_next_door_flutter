import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pets_next_door_flutter/features/pet/domain/breed.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet/providers/breeds_paging_controller_provider.dart';
import 'package:pets_next_door_flutter/presentation/widgets/pagination/infinite_paged_list.dart';

class RegisterPetDetailView extends ConsumerWidget {
  const RegisterPetDetailView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pagingController = ref.watch(breedsPagingControllerProvider);

    return PNDInfinitePagedList(
      pagingController: pagingController,
      builderDelegate: PagedChildBuilderDelegate<Breed>(
        itemBuilder: <Breed>(context, breed, index) => Text(breed.name),
      ),
    );
  }
}
